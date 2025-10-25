#include "global.h"
#include "char_remap.h"

// Character pair remapping table (2-byte only)
struct CharRemap {
    u8 inputByte1;
    u8 inputByte2;
    u8 outputByte1;
    u8 outputByte2;
};

// Define your custom 2-byte character mappings here
// Format: {input_byte1, input_byte2, output_byte1, output_byte2}
const struct CharRemap char_remap_table[] = {
    // Controller buttons (2-byte codes)
    {'@', 'A', 0x87, 0x4D},   // @A ¨ A button graphic (‡M slot)
    {'@', 'B', 0x87, 0x4E},   // @B ¨ B button graphic (‡N slot)
    {'@', 'D', 0x87, 0x4F},   // @D ¨ D-pad graphic (‡O slot)
    {'@', 'L', 0x87, 0x4B},   // @L ¨ L button graphic (‡K slot)
    {'@', 'R', 0x87, 0x4C},   // @R ¨ R button graphic (‡L slot)
    
    // Accented characters
    {'e', '^', 0x87, 0x51},   // e^ ¨ ? graphic (‡Q slot)
    
    // End marker
    {0x00, 0x00, 0x00, 0x00}
};

/**
 * Remap a 2-byte character pair if it's in the remap table
 * 
 * @param input Input 2-byte character pair
 * @param output Output 2-byte character pair
 * @return TRUE if remapped, FALSE otherwise
 */
u32 char_remap_get(const char *input, char *output) {
    const struct CharRemap *entry;
    
    entry = char_remap_table;
    
    /* Search the remap table */
    while (entry->inputByte1 != 0x00 || entry->inputByte2 != 0x00) {
        if (input[0] == entry->inputByte1 && input[1] == entry->inputByte2) {
            /* Found a match! */
            output[0] = entry->outputByte1;
            output[1] = entry->outputByte2;
            return TRUE;
        }
        entry++;
    }
    
    /* No remap found, copy input to output unchanged */
    output[0] = input[0];
    output[1] = input[1];
    return FALSE;
}

/**
 * Process an entire string and apply character remapping
 * 
 * @param input Input string
 * @param output Output buffer (must be at least as large as input string)
 */
void char_remap_string(const char *input, char *output) {
    u32 i;
    u32 j;
    char remapped[2];
    
    i = 0;
    j = 0;
    
    while (input[i] != '\0') {
        /* Handle special control characters (single byte) */
        if (input[i] == '.' || input[i] == ':' || 
            input[i] == '\1' || input[i] == '\2' || 
            input[i] == '\3' || input[i] == '\4' || input[i] == '\5') {
            output[j++] = input[i++];
            if (input[i] != '\0') {
                output[j++] = input[i++];
            }
            continue;
        }
        
        /* Try to remap the 2-byte pair */
        char_remap_get(&input[i], remapped);
        
        /* Copy remapped or original pair */
        output[j++] = remapped[0];
        output[j++] = remapped[1];
        i += 2;
    }
    
    output[j] = '\0';
}
