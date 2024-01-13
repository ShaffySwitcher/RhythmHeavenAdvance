#include "global.h"
#include "sound.h"

// Song Titles
#include "song_titles.inc.c"

// Song Headers
#include "song_headers.inc.c"

// Song List (Unused)
u32 D_08a9e8e0 = 1924 - 1; // Size of the Song List - 1 (Unused)
#include "song_array_gen.inc.c"

// Song Table
u32 D_08aa06f4 = 1924; // Size of the Song Table (Unused)
#define GEN_SONG_TABLE
#include "song_array_gen.inc.c"
