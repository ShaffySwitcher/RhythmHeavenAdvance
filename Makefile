#---------------------------------------------------------------------------------
.SUFFIXES:
#---------------------------------------------------------------------------------

ifeq ($(strip $(DEVKITARM)),)
    $(error "Please set DEVKITARM in your environment. export DEVKITARM=<path to>devkitARM")
endif

SHELL := /bin/bash

CPP := $(CC) -E

include $(DEVKITARM)/base_rules

CROSS := arm-none-eabi-
OBJCOPY := $(CROSS)objcopy
LD := $(CROSS)gcc
AS := $(CROSS)as
CC1 := tools/agbcc/bin/agbcc

# Verbose toggle
V := @
ifeq (VERBOSE, 1)
    V=
endif

# Colors
NO_COL  := \033[0m
GREEN   := \033[0;32m
BLUE    := \033[0;34m
YELLOW  := \033[0;33m

# Generic print function for make rules
define print
  $(V)echo -e "$(GREEN)$(1) $(YELLOW)$(2)$(GREEN) -> $(BLUE)$(3)$(NO_COL)"
endef

# Revision to build
REV ?= 0

ifeq ($(REV), 0)
    TARGET := rhythmtengoku
    TARGET_SHA1 := $(BASEROM_SHA1)
else
    TARGET := rhythmtengoku_rev1
    TARGET_SHA1 := $(REV1_SHA1)
endif

# Preprocessor defines
DEFINES := REV=$(REV)
C_DEFINES := $(foreach d,$(DEFINES),-D$(d))

CFLAGS := -mthumb-interwork -Wparentheses -O2 -fhex-asm
CPPFLAGS := -I tools/agbcc -I tools/agbcc/include -I . -iquote include -nostdinc -undef $(C_DEFINES)

#---------------------------------------------------------------------------------

BUILD		   := build
SOURCES		   := src $(shell find src -type d)
ASM            := asm
INCLUDES	   := include
BIN		       := bin
DATA		   := data
SCENE_DATA     := $(shell find $(DATA)/scenes -type d)
LEVEL_DATA     := $(DATA)/levels
GAMES          := games
GAME_DATA	   := $(shell find $(GAMES) -type d)
GRAPHICS       := $(shell find graphics -type d) $(shell find $(GAMES) -type d -name "graphics")
AUDIO		   := audio
MUSIC		   := $(AUDIO)/sequences
SFX            := $(AUDIO)/samples

C_DIRS		   := $(SOURCES) $(AUDIO) $(GRAPHICS) $(DATA) $(SCENE_DATA) $(LEVEL_DATA) $(GAME_DATA)
C_DIRS         := $(sort $(C_DIRS)) # remove duplicates

ASM_DIRS       := $(ASM) $(DATA) $(SCENE_DATA) $(LEVEL_DATA)
BS_DIRS        := $(GAME_DATA) $(SCENE_DATA)
GFX_DIRS       := $(GRAPHICS)

ALL_DIRS       := $(BIN) $(ASM_DIRS) $(C_DIRS) $(MUSIC) $(SFX)
ALL_DIRS       := $(sort $(ALL_DIRS)) # remove duplicates
BUILD_DIRS     := $(BUILD) $(addprefix $(BUILD)/,$(ALL_DIRS))

LD_SCRIPT := rt_modern.ld
UNDEFINED_SYMS := undefined_syms.ld

#---------------------------------------------------------------------------------

export OUTPUT	:=	$(BUILD)/$(TARGET)

CFILES		:=	$(foreach dir,$(C_DIRS),$(wildcard $(dir)/*.c))
SFILES		:=	$(foreach dir,$(ASM_DIRS),$(wildcard $(dir)/*.s)) $(foreach dir,$(BS_DIRS),$(wildcard $(dir)/*.bs))
BINFILES	:=	$(foreach dir,$(BIN),$(wildcard $(dir)/*.bin)) \
				$(foreach dir,$(MUSIC),$(wildcard $(dir)/*.mid)) \
				$(foreach dir,$(GRAPHICS),$(wildcard $(dir)/*.bin)) \
				$(foreach dir,$(GRAPHICS),$(wildcard $(dir)/*.raw.4bpp))
WAVFILES    :=  $(foreach dir,$(SFX),$(wildcard $(dir)/*.wav))

4BPPFILES   :=  $(filter-out $(BINFILES),$(foreach dir,$(GRAPHICS),$(wildcard $(dir)/*.4bpp)))
TILEMAPS	:=  $(foreach dir,$(GFX_DIRS),$(wildcard $(dir)/*.tilemap))
JSONFILES   :=  $(foreach dir,$(AUDIO),$(wildcard $(dir)/*.json))

CFILES := $(filter-out %.inc.c, $(CFILES))

PCMFILES       := $(addprefix $(BUILD)/,$(WAVFILES:.wav=.pcm))
OFILES_GENERATED := $(addprefix $(BUILD)/,$(addsuffix .s.o,$(JSONFILES))) \
				    $(addprefix $(BUILD)/,$(addsuffix .s.o,$(4BPPFILES))) \
				    $(addprefix $(BUILD)/,$(addsuffix .s.o,$(TILEMAPS)))
OFILES_SOURCES   := $(addprefix $(BUILD)/,$(addsuffix .o,$(SFILES)))   \
				    $(addprefix $(BUILD)/,$(addsuffix .o,$(CFILES)))   \
				    $(addprefix $(BUILD)/,$(addsuffix .o,$(BINFILES)))

OFILES := $(OFILES_SOURCES) $(OFILES_GENERATED)

INCLUDE	:=	-I $(foreach dir,$(INCLUDES),$(wildcard $(dir)/*.h)) \
			-I $(foreach dir,$(LIBDIRS),-I $(dir)/include) \
			-I $(CURDIR)/$(BUILD)

#---------------------------------------------------------------------------------
.PHONY: default clean distclean rebuild
.SECONDARY:
#---------------------------------------------------------------------------------

# If nonmatching, print a generic message
# otherwise check if the ROM matches the official ROM
default: $(OUTPUT).gba
	$(V)echo "Build succeeded!"; \

#---------------------------------------------------------------------------------

clean:
	$(V)echo clean ...
	$(V)rm -fr $(filter-out build/audio, $(wildcard build/*))
	$(V)rm -fr $(filter-out build/audio/samples build/audio/sequences, $(wildcard build/audio/*))

distclean:
	$(V)echo full clean ...
	$(V)rm -fr $(BUILD)

#---------------------------------------------------------------------------------

rebuild: clean default

#---------------------------------------------------------------------------------


#---------------------------------------------------------------------------------
# main targets
#---------------------------------------------------------------------------------

$(BUILD_DIRS):
	$(V)echo -e "$(GREEN)Creating build directory: $(YELLOW)$@$(NO_COL)"
	$(V)mkdir -p $@

$(OUTPUT).gba	:	$(OUTPUT).elf
	$(V)$(OBJCOPY) --pad-to=0x1000000 --gap-fill=0x00 -O binary $< $@
	$(V)echo "ROM Assembled!"

$(OUTPUT).elf	:	$(OFILES) | $(BUILD)/$(LD_SCRIPT)
	$(V)echo "Building ROM..."
	$(V)$(LD) $(OFILES) tools/agbcc/lib/libgcc.a tools/agbcc/lib/libc.a -T $(BUILD)/$(LD_SCRIPT) -T $(UNDEFINED_SYMS) -Wl,--no-warn-rwx-segments,-Map $(@:.elf=.map) -nostartfiles -o $@


# Binary data
$(BUILD)/%.bin.o	$(BUILD)/%.bin.h :	%.bin | $(BUILD_DIRS)
	$(call print,Copying binary file:,$<,$@)
	$(V)bin2s -a 4 -H $(BUILD)/$<.h $< | $(AS) -o $(BUILD)/$<.o

$(BUILD)/%.raw.4bpp.o	$(BUILD)/%.raw.4bpp.h :	%.raw.4bpp | $(BUILD_DIRS)
	$(call print,Copying uncompressed graphics file:,$<,$@)
	$(V)bin2s -a 4 -H $(BUILD)/$<.h $< | $(AS) -o $(BUILD)/$<.o

$(BUILD)/%.mid.o	$(BUILD)/%.mid.h :	%.mid | $(BUILD_DIRS)
	$(call print,Copying MIDI file:,$<,$@)
	$(V)bin2s -a 4 -H $(BUILD)/$<.h $< | $(AS) -o $(BUILD)/$<.o

# WAV files
$(BUILD)/%.pcm : %.wav | $(BUILD_DIRS)
	$(call print,Converting WAV file to raw PCM audio:,$<,$@)
	$(V)ffmpeg -y -loglevel quiet -i $< -f s8 $@


# C files
define build_c_file
	$(call print,Compiling:,$<,$@)
	$(V)$(CPP) -MMD -MF $(BUILD)/$*.d -MT $@ $(CPPFLAGS) $< -o $(BUILD)/$*.i
	$(V)$(CC1) $(CFLAGS) $(BUILD)/$*.i -o $(BUILD)/$*.s
	$(V)printf ".text\n\t.align\t2, 0\n" >> $(BUILD)/$*.s
	$(V)$(AS) -march=armv4t -o $@ $(BUILD)/$*.s
endef

$(BUILD)/%.c.o : %.c | $(BUILD_DIRS)
	$(call build_c_file)

build/src/udivdi3.c.o: CFLAGS := -Wparentheses -O2 -fhex-asm


# ASM files
$(BUILD)/%.s.o : %.s | $(BUILD_DIRS)
	$(call print,Assembling:,$<,$@)
	$(V)$(CPP) $(CPPFLAGS) -x assembler-with-cpp $< -o $(BUILD)/$*.s
	$(V)$(AS) -MD $(BUILD)/$*.d -march=armv4t -o $@ $(BUILD)/$*.s

# Beatscript
$(BUILD)/%.bs.o : %.bs | $(BUILD_DIRS)
	$(call print,Assembling Beatscript:,$<,$@)
	$(V)$(CPP) $(CPPFLAGS) -x assembler-with-cpp $< -o $(BUILD)/$*.bs
	$(V)$(AS) -MD $(BUILD)/$*.d -march=armv4t -o $@ $(BUILD)/$*.bs

# Preprocessed linker script
$(BUILD)/$(LD_SCRIPT): $(LD_SCRIPT)
	$(call print,Preprocessing linker script:,$<,$@)
	$(V)$(CPP) $(CPPFLAGS) -x c $< -o $@


# Autogenerated assembly data files
$(BUILD)/%.json.s : %.json $(PCMFILES) | $(BUILD_DIRS)
	$(call print,Generating data table from JSON:,$<,$@)
	$(V)python3 tools/sample_parser.py $< $@

$(BUILD)/%.4bpp.s : %.4bpp | $(BUILD_DIRS)
	$(call print,Compressing graphics:,$<,$@)
	$(V)python3 tools/compression.py $< $@ $(REV)

$(BUILD)/%.tilemap.s : %.tilemap | $(BUILD_DIRS)
	$(call print,Compressing tilemap:,$<,$@)
	$(V)python3 tools/compression.py $< $@ $(REV)

$(OFILES_GENERATED): $(BUILD)/%.s.o : $(BUILD)/%.s | $(BUILD_DIRS)
	$(call print,Assembling:,$<,$@)
	$(V)$(AS) -MD $(BUILD)/$*.d -march=armv4t -o $@ $(BUILD)/$*.s

-include $(addprefix $(BUILD)/,$(CFILES:.c=.d))

#---------------------------------------------------------------------------------------

print-% : ; $(info $* is a $(flavor $*) variable set to [$($*)]) @true
