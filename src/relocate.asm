; Import all the data inside the ROM.

.org 0x08D34940

.include "gfx/Font/font_relocate.asm"
.include "sfx/DrumLessons/drumlessons_relocate.asm"
.include "sfx/TempoUp/RhythmTweezers/tweezers_relocate.asm"
.include "gfx/RhythmGames/RatRace/ratrace_relocate.asm"
.include "gfx/RhythmGames/NightWalk/nightwalk_relocate.asm"
.include "gfx/RhythmGames/KarateMan/karateman_relocate.asm"
.include "gfx/RhythmGames/TheClappyTrio/clappy_relocate.asm"
.include "gfx/RhythmGames/TheSnappyTrio/snappy_relocate.asm"
.include "gfx/HealthSafety/healthsafety_relocate.asm"
.include "gfx/MainMenu/mainmenu_relocate.asm"
.include "gfx/Options/options_relocate.asm"

.include "code/DebugMenu/debugmenu_relocate.asm"