#---------------------------------------------------------------------------------
.SUFFIXES:
#---------------------------------------------------------------------------------

ifeq ($(strip $(DEVKITARM)),)
$(error "Please set DEVKITARM in your environment. export DEVKITARM=<path to>devkitARM")
endif

CPP := $(CC) -E
CPPFLAGS := -I tools/agbcc -I tools/agbcc/include -I . -iquote include -nostdinc -undef

include $(DEVKITARM)/base_rules

#include $(DEVKITARM)/gba_rules
CROSS := arm-none-eabi-
OBJCOPY := $(CROSS)objcopy
LD := $(CROSS)ld
AS := $(CROSS)as
CC1 := tools/agbcc/bin/agbcc
CFLAGS := -mthumb-interwork -Wimplicit -Wparentheses -O2 -fhex-asm


#---------------------------------------------------------------------------------
# TARGET is the name of the output
# BUILD is the directory where object files & intermediate files will be placed
# SOURCES is a list of directories containing source code
# INCLUDES is a list of directories containing extra header files
# DATA is a list of directories containing binary data
# GRAPHICS is a list of directories containing files to be processed by grit
#
# All directories are specified relative to the project directory where
# the makefile is found
#
#---------------------------------------------------------------------------------
TARGET		:= rhythmtengoku
BUILD		:= build
SOURCES		:= src
ASM         := asm
INCLUDES	:= include
DATA		:= data
MUSIC		:=
BUILD_DIRS  := $(BUILD) $(BUILD)/data $(BUILD)/asm $(BUILD)/src
LD_SCRIPT   := rt.ld

#---------------------------------------------------------------------------------
# options for code generation
#---------------------------------------------------------------------------------
#ARCH	:=	-mthumb -mthumb-interwork
#
#CFLAGS	:=	-g -Wall -O2\
#		-mcpu=arm7tdmi -mtune=arm7tdmi\
#		$(ARCH)
#
#CFLAGS	+=	$(INCLUDE)
#
#CXXFLAGS	:=	$(CFLAGS) -fno-rtti -fno-exceptions
#
#ASFLAGS	:=	-g $(ARCH)
#LDFLAGS	=	-g $(ARCH) -Wl,-Map,$(notdir $*.map)

#---------------------------------------------------------------------------------
# any extra libraries we wish to link with the project
#---------------------------------------------------------------------------------
#LIBS	:= -lmm -lgba


#---------------------------------------------------------------------------------
# list of directories containing libraries, this must be the top level containing
# include and lib
#---------------------------------------------------------------------------------
#LIBDIRS	:=	$(LIBGBA)

#---------------------------------------------------------------------------------
# no real need to edit anything past this point unless you need to add additional
# rules for different file extensions
#---------------------------------------------------------------------------------


#ifneq ($(BUILD),$(notdir $(CURDIR)))
#---------------------------------------------------------------------------------

export OUTPUT	:=	$(BUILD)/$(TARGET)

export VPATH	:=	$(foreach dir,$(ASM),$(CURDIR)/$(dir)) \
			$(foreach dir,$(DATA),$(CURDIR)/$(dir)) \
			$(foreach dir,$(GRAPHICS),$(CURDIR)/$(dir))

export DEPSDIR	:=	$(CURDIR)/$(BUILD)

CFILES		:=	$(foreach dir,$(SOURCES),$(notdir $(wildcard $(dir)/*.c)))
CPPFILES	:=	$(foreach dir,$(SOURCES),$(notdir $(wildcard $(dir)/*.cpp)))
SFILES		:=	$(foreach dir,$(ASM),$(notdir $(wildcard $(dir)/*.s)))
BINFILES	:=	$(foreach dir,$(DATA),$(notdir $(wildcard $(dir)/*.bin)))

ifneq ($(strip $(MUSIC)),)
	export AUDIOFILES	:=	$(foreach dir,$(notdir $(wildcard $(MUSIC)/*.*)),$(CURDIR)/$(MUSIC)/$(dir))
	BINFILES += soundbank.bin
endif

export OFILES_BIN := $(addprefix $(BUILD)/data/,$(addsuffix .o,$(BINFILES)))

export OFILES_SOURCES := $(addprefix $(BUILD)/asm/,$(SFILES:.s=.o)) $(addprefix $(BUILD)/src/,$(CFILES:.c=.o))

export OFILES := $(OFILES_BIN) $(OFILES_SOURCES)

export HFILES := $(BUILD)/data/$(addsuffix .h,$(BINFILES))

export INCLUDE	:=	-I $(foreach dir,$(INCLUDES),$(wildcard $(dir)/*.h)) \
					-I $(foreach dir,$(LIBDIRS),-I $(dir)/include) \
					-I $(CURDIR)/$(BUILD)

#export LIBPATHS	:=	$(foreach dir,$(LIBDIRS),-L$(dir)/lib)

.PHONY: default clean

#---------------------------------------------------------------------------------
default: $(OUTPUT).gba
	@diff baserom.gba $(OUTPUT).gba && (echo "$(TARGET).gba: OK") || (echo "The build succeeded, but did not match the official ROM.")

#---------------------------------------------------------------------------------
clean:
	@echo clean ...
	@rm -fr $(BUILD)


#---------------------------------------------------------------------------------


#---------------------------------------------------------------------------------
# main targets
#---------------------------------------------------------------------------------

$(BUILD_DIRS):
	@echo "Creating /$@"
	@mkdir -p $@

$(OUTPUT).gba	:	$(OUTPUT).elf
	@$(OBJCOPY) --pad-to=0x1000000 --gap-fill=0x00 -O binary $< $@
	@echo "ROM Assembled!"

$(OUTPUT).elf	:	$(OFILES)
	$(LD) $(OFILES) tools/agbcc/lib/libgcc.a -T $(LD_SCRIPT) -Map $(@:.elf=.map) -o $@

#---------------------------------------------------------------------------------
# The bin2o rule should be copied and modified
# for each extension used in the data directories
#---------------------------------------------------------------------------------

#---------------------------------------------------------------------------------
# rule to build soundbank from music files
#---------------------------------------------------------------------------------
soundbank.bin soundbank.h : $(AUDIOFILES)
#---------------------------------------------------------------------------------
	@mmutil $^ -osoundbank.bin -hsoundbank.h

#---------------------------------------------------------------------------------
# This rule links in binary data with the .bin extension
#---------------------------------------------------------------------------------
$(BUILD)/data/%.bin.o	$(BUILD)/data/%.bin.h :	data/%.bin | $(BUILD_DIRS)
#---------------------------------------------------------------------------------
	@echo "Converting $< to $<.o"
	@bin2s -a 4 -H $(BUILD)/$<.h $< | $(AS) -o $(BUILD)/$<.o

$(BUILD)/src/%.o : src/%.c | $(BUILD_DIRS)
	@$(CPP) $(CPPFLAGS) $< -o $(BUILD)/src/$*.i
	$(CC1) $(CFLAGS) $(BUILD)/src/$*.i -o $(BUILD)/src/$*.s
	$(AS) -MD  $(BUILD)/src/$*.d -march=armv4t -o $@ $(BUILD)/src/$*.s

$(BUILD)/asm/%.o : asm/%.s | $(BUILD_DIRS)
	@echo "Assembling $< to $(basename $<).o"
	@$(AS) -MD $(BUILD)/asm/$*.d -march=armv4t -o $@ $<

-include $(DEPSDIR)/*.d
#---------------------------------------------------------------------------------------

#---------------------------------------------------------------------------------------
