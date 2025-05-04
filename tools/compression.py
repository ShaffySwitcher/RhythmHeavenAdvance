#!/usr/bin/env python3
import sys, json, os, array

def read_from_rom(start, size):
    baserom.seek(start)
    data = baserom.read(size)
    return data


def pad4(addr):
    return (addr + 3) & ~3


def output_array(f, array, format, linelength):
    length = len(array)
    for i in range(length):
        f.write(format % array[i])
        if (i != length - 1):
            f.write(", ")
            if (i % linelength == linelength-1):
                f.write("\n\t")


def append_unique_nibbles(array, unique_nibbles):
    for hword in array:
        for i in range(0, 16, 4):
            byte = (hword >> i) & 0xF
            if byte not in unique_nibbles:
                unique_nibbles.append(byte)

def get_unique_nibbles(array):
    unique_nibbles = []
    append_unique_nibbles(array, unique_nibbles)
    return unique_nibbles

# Compression Mode 1: 1:2 ratio
# Takes a nibble dictionary of length 4 and a halfword
# Returns one byte, with every two bits indexing one nibble
def mode_1_encode(dictionary, hword):
    result = 0
    for i in range(0, 16, 4):
        result = result | dictionary.index((hword >> i) & 0xF) << (i >> 1)
    return result

# Compression Mode 2: 1:4 ratio
# Takes a nibble dictionary of length 2 and a halfword array of length 4
# Returns a halfword, with every bit indexing one nibble
def mode_2_encode(dictionary, hwords):
    result = 0
    for i in range(16):
        result |= dictionary.index((hwords[i >> 2] >> ((i&3) << 2)) & 0xF) << i
    return result

# Check if the 1:4 compression mode is possible for the upcoming data
def mode_2_available(hwords):
    if (len(hwords) < 4):
        return False

    for i in range(0, len(hwords) - 3):
        if (len(get_unique_nibbles(hwords[i:i+4])) <= 2):
            return True
    return False


# An array of bits that are used to determine the encoding mode
class SlidingWindow:
    index: int = 0

    def __init__(self):
        self.data = [0]

    def append_bit(self, bit):
        if self.index >= 32:
            self.index = 0
            self.data.append(0)
        self.data[-1] = self.data[-1] | (bit << self.index)
        self.index += 1
    
    def fill_rest(self, address):
        # Fill in all unused bits with the data from the ROM
        bytes = read_from_rom(address + (len(self.data)-1)*4, 4)
        # Unpack 4 bytes into one number
        word = 0
        for i in range(4):
            word |= bytes[i] << (i*8)
        bitmask = 0xFFFFFFFF >> (32 - self.index)
        bitmask = ~bitmask & 0xFFFFFFFF
        #print("%08X" % word, "%08X" % bitmask, "%08X" % (address), "%08X" % (address + (len(self.data)-1)*4))
        self.data[-1] = self.data[-1] | (word & bitmask)

class CompressedData:
    segmentCount: int = 0
    window1: SlidingWindow = SlidingWindow()
    window2: SlidingWindow = SlidingWindow()

    def __init__(self, data, address):
        self.compressed = []
        self.address = address
        self.compress(data)
    
    def get_nibble_from_rom(self, index, nibble):
        if self.address is None:
            return 0xF
        byte = read_from_rom(self.address + index, 1)[0]
        if nibble == 0:
            return byte & 0xF
        else:
            return byte >> 4

    def compress(self, data):
        i = 0
        self.decompressedSize = len(data)
        while True:
            # The compression algorithm will very often scan 8 bytes ahead,
            # looking to be able to use the highest ratio compression whereever
            # possible.

            mode2NibbleList = get_unique_nibbles(data[i:i+4])
            if len(mode2NibbleList) <= 2 and i+4 < len(data):
                # 1:4 ratio encoding
                #print("Mode 2 encode:   ", mode2NibbleList)
                newEncodedData = []
                count = 0

                while len(mode2NibbleList) <= 2:
                    hword = mode_2_encode(mode2NibbleList, data[i:i+4])
                    #print("%x, %x, %x, %x" % (data[i], data[i+1], data[i+2], data[i+3]), " -> ", "0x%04X" % hword)
                    newEncodedData.append(hword)
                    count += 1
                    i += 4
                    if i+4 > len(data) or count >= 256:
                        break
                    append_unique_nibbles(data[i:i+4], mode2NibbleList)

                self.compressed.append((count - 1) << 8 | mode2NibbleList[1] << 4 | mode2NibbleList[0])
                self.compressed.extend(newEncodedData)
                self.window1.append_bit(1)
                self.window2.append_bit(0)
                self.segmentCount += 1
                continue

            # Even if the immediate next 6 bytes can be done with 1:2 compression,
            # the algorithm will copy up to 4 bytes uncompressed if 1:4 compression
            # is possible after.
            if (i+6 > len(data) or not mode_2_available(data[i+1:i+6])):
                # Scan 6 bytes ahead
                mode1NibbleList = get_unique_nibbles(data[i:i+3])
                if len(mode1NibbleList) <= 4 and i+3 <= len(data):
                    # 1:2 ratio encoding
                    #print("Mode 1 encode:   ", mode1NibbleList)
                    newEncodedData = []
                    count = 0
                    startingByte = mode_1_encode(mode1NibbleList, data[i])
                    #print("%x" % data[i], " -> ", "0x%02X" % startingByte)
                    i += 1

                    while len(mode1NibbleList) <= 4:
                        byte1 = mode_1_encode(mode1NibbleList, data[i])
                        byte2 = mode_1_encode(mode1NibbleList, data[i+1])
                        #print("%x, %x" % (data[i], data[i+1]), " -> ", "0x%04X" % (byte1 << 8 | byte2))
                        newEncodedData.append(byte1 | byte2 << 8)
                        count += 1
                        i += 2
                        if i+2 > len(data) or count >= 256:
                            break
                        # Check if we can end 1:2 compression here and start 1:4 compression
                        if mode_2_available(data[i:i+5]):
                            break
                        append_unique_nibbles(data[i:i+2], mode1NibbleList)

                    while len(mode1NibbleList) < 4:
                        mode1NibbleList.append(self.get_nibble_from_rom(len(self.compressed)*2+(len(mode1NibbleList) >> 1), len(mode1NibbleList) & 1))
                        

                    self.compressed.append(mode1NibbleList[3] << 12 | mode1NibbleList[2] << 8 | mode1NibbleList[1] << 4 | mode1NibbleList[0])
                    self.compressed.append((count - 1) | startingByte << 8)
                    self.compressed.extend(newEncodedData)
                    self.window1.append_bit(1)
                    self.window2.append_bit(1)
                    self.segmentCount += 1
                    continue

            if i >= len(data):
                break

            # Copy mode (no compression)
            #print("Copy mode: %x" % data[i])
            self.compressed.append(data[i])
            self.window1.append_bit(0)
            i += 1
            self.segmentCount += 1

        if self.address is not None:
            self.window1.fill_rest(pad4(self.address + len(self.compressed)*2))
            self.window2.fill_rest(pad4(self.address + len(self.compressed)*2) + len(self.window1.data)*4)

    def output_to_file(self, f, symbol):
        # f is a currently open file object
        f.write("u16 %s_data[] = {\n\t" % symbol)
        output_array(f, self.compressed, "0x%04x", 16)
        f.write("\n};\n\n")
        f.write("u32 %s_window1[] = {\n\t" % symbol)
        output_array(f, self.window1.data, "0x%08x", 8)
        f.write("\n};\n\n")
        f.write("u32 %s_window2[] = {\n\t" % symbol)
        if len(self.window2.data) != 1 or self.window2.index != 0:
            output_array(f, self.window2.data, "0x%08x", 8)
        f.write("\n};\n\n")

        f.write("struct Huffman %s_compressed = {\n" % symbol)
        f.write("\t/* Compressed data */   %s_data,\n" % symbol)
        f.write("\t/* Decompressed size */ 0x%x,\n" % self.decompressedSize)
        f.write("\t/* Segment count */     %d,\n" % self.segmentCount)
        f.write("\t/* Window 1 */          %s_window1,\n" % symbol)
        f.write("\t/* Window 2 */          %s_window2,\n" % symbol)
        f.write("};\n\n")


class RleCompressedData:
    size: int = 0
    offset: int = 0

    def __init__(self, data):
        self.compressed = []
        self.counts = []
        self.compress(data)

    def add_count(self, count):
        while (count > 255):
            self.counts.append(0)
            count -= 255
        self.counts.append(count)

    def compress(self, data):
        i = 0
        self.offset = len(data)
        while True:
            count = 1
            self.size += 1
            curValue = data[i]
            self.compressed.append(curValue)
            while (data[i+1] != curValue or i+3 >= self.offset or  data[i+2] != curValue or data[i+3] != curValue):
                i += 1
                count += 1
                curValue = data[i]
                self.compressed.append(curValue)
                if (i+1 >= self.offset):
                    break
            self.add_count(count)
            i += 1
            if (i+1 >= self.offset):
                break

            count = 1
            self.size += 1
            while (data[i+1] == curValue):
                i += 1
                count += 1
                if (i+1 >= self.offset):
                    break
            self.add_count(count)
            i += 1
            if (i+1 >= self.offset):
                break

    def output_to_file(self, f, symbol, double, unusedData):
        if not double:
            if unusedData is not None:
                f.write("u8 %s_unused[%d] = {\n\t" % (symbol, len(unusedData)))
                output_array(f, unusedData, "0x%02x", 16)
                f.write("\n};\n\n")
            f.write("u16 %s_data[] = {\n\t" % symbol)
            output_array(f, self.compressed, "0x%04x", 16)
            f.write("\n};\n\n")

        f.write("u8 %s_rle_segments[] = {\n\t" % symbol)
        output_array(f, self.counts, "%3d", 16)
        f.write("\n};\n\n")

        f.write("struct CompressedGraphics %s = {\n" % symbol)
        if (double):
            f.write("\t/* Compressed data */    &%s_compressed,\n" % symbol)
        else:
            f.write("\t/* Compressed data */    %s_data,\n" % symbol)
        f.write("\t/* RLE segments */       %s_rle_segments,\n" % symbol)
        f.write("\t/* Segment count */      %d,\n" % self.size)
        f.write("\t/* Decompressed size */  0x%x,\n" % self.offset)
        f.write("\t/* Double compression */ %s,\n" % ("TRUE" if double else "FALSE"))
        f.write("};\n")



def get_size_and_segments(cFile):
    with open(cFile, 'r') as f:
        lines = f.readlines()

    for (i, line) in enumerate(lines):
        if "/* Size */" in line:
            size = int(line.split("/")[2].strip()[2:-1],16)
        if "/* Count */" in line:
            segments = int(line.split("/")[2].strip()[2:-1],16)
    return size, segments

def compress_file(input, output, double, revision):
    symbol = os.path.splitext(os.path.basename(input))[0]
    with open(input, 'rb') as f:
        data = array.array("H", f.read())
    
    address = None
    unusedData = None
    with open("tools/compression_offsets.json", "r") as f:
        offsets = json.load(f)
        if symbol in offsets:
            address = offsets[symbol][revision]
            if not double:
                unusedData = read_from_rom(address - offsets[symbol][2], offsets[symbol][2])

    outputFile = open(output, 'w')
    outputFile.write('#include "global.h"\n#include "graphics.h"\n\n')

    rleData = RleCompressedData(data)
    if double:
        compressedData = CompressedData(rleData.compressed, address)
        compressedData.output_to_file(outputFile, symbol)
    rleData.output_to_file(outputFile, symbol, double, unusedData)

if __name__ == "__main__":
    inputFile = sys.argv[1]
    outputFile = sys.argv[2]
    revision = int(sys.argv[3])
    double = (inputFile.endswith(".4bpp"))

    if (revision < 1):
        baserom = open("baserom.gba", "rb")
    else:
        baserom = open("baserom_rev1.gba", "rb")
    compress_file(inputFile, outputFile, double, revision)
