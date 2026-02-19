#include "global.h"
#include "graphics.h"
#include "src/bitmap_font.h"
#include "src/scenes/results.h"
#include "graphics/results/results_graphics.h"


  /* RESULTS - MISC. DATA */


// [D_089d7984] Letter Ranks
const char *results_letter_ranks[] = {
    ":1.1" "Ｄ",
    ":1.5" "Ｃ",
    ":1.4" "Ｂ",
    ":1.6" "Ａ",
    ":1.2" "Ｓ"
};


// [D_089d7998] DEBUG Skill Comments - Accuracy
const char *results_skill_text_accuracy[] = {
    "Ｐｒｏｆｅｓｓｉｏｎａｌ　ａｃｃｕｒａｃｙ",
    "Ｓｅｎｓｅ　ｏｆ　ｒｈｙｔｈｍ",
    "Ｓａｔｉｓｆｙｉｎｇ　ａｃｃｕｒａｃｙ",
    NULL
};


// [D_089d79a8] DEBUG Skill Comments - Barelies (Tracker 2)
    // Technique Level
    // Adaptability
    // Reflexes
const char *results_skill_text_barely_trk2[] = {
    "Ｔｅｃｈｎｉｑｕｅ　Ｌｅｖｅｌ",
    "Ａｄａｐｔａｂｉｌｉｔｙ",
    "Ｒｅｆｌｅｘｅｓ",
    NULL
};


// [D_089d79b8] DEBUG Skill Comments - Barelies (Tracker 1)
    // Responsibility
    //
    // Steadiness
const char *results_skill_text_barely_trk1[] = {
    "Ｒｅｓｐｏｎｓｉｂｉｌｉｔｙ",
    "Ｔｈｅ　ｃｒｕｃｉａｌ　ｐａｒｔ",
    "Ｓｔｅａｄｉｎｅｓｓ",
    NULL
};


// [D_089d79c8] DEBUG Skill Comments - Hits
const char *results_skill_text_hit_avg[] = {
    "Ａｍａｔｅｕｒ−ｌｅｖｅｌ　ａｃｃｕｒａｃｙ",
    "Ｏｒｄｉｎａｒｙ　ａｃｃｕｒａｃｙ",
    "Ｍｏｄｅｒａｔｅ　ａｃｃｕｒａｃｙ",
    NULL
};


// [D_089d79d8] DEBUG Skill Comments - Irrelevant Inputs
const char *results_skill_text_irrelevant_inputs[] = {
    "Ｓｔａｍｉｎａ　ｒｅｓｏｕｒｃｅｆｕｌｎｅｓｓ",
    "Ｒａｔｉｏｎａｌ　ｔａｌｅｎｔ",
    "Ｃａｌｍｎｅｓｓ",
    NULL
};


// [D_089d79e8] DEBUG Skill Comments - Accuracy (Lenient)
const char *results_skill_text_accuracy_lenient[] = {
    "Ｓｔａｂｉｌｉｔｙ",
    "Ｔｈｅ　ｃｏｒｅ　ｏｆ　ｙｏｕｒ　ｒｈｙｔｈｍ",
    "Ｃｏｎｓｉｓｔｅｎｃｙ",
    NULL
};


// [D_089d79f8] DEBUG Skill Comments - Misses
const char *results_skill_text_miss[] = {
    "Ｍｏｔｉｖａｔｉｏｎ",
    "Ｖｉｓｕａｌ　ａｃｕｉｔｙ",
    "Ｐｏｓｉｔｉｖｉｔｙ",
    NULL
};


// [D_089d7a08] DEBUG Skill Comments - Misses (Tracker 2)
const char *results_skill_text_miss_trk2[] = {
    "Ｒｅｆｌｅｘｅｓ",
    "Ｆｌｅｘｉｂｉｌｉｔｙ",
    "Ｃａｒｅｆｕｌｎｅｓｓ",
    NULL
};


// [D_089d7a18] DEBUG Skill Comments - Random
const char *results_skill_text_random[] = {
    "Ｌｏｖｅ　ｆｏｒｔｕｎｅ　ｆｏｒ　ｎｅｘｔ　ｙｅａｒ",
    "Ｔｈｉｓ　ｙｅａｒ'ｓ　ｆｉｎａｎｃｉａｌ　ｆｏｒｔｕｎｅ",
    "Ｔｏｍｏｒｒｏｗ'ｓ　ｗｅａｔｈｅｒ",
    "Ｙｅｓｔｅｒｄａｙ'ｓ　ｄｉｎｎｅｒ",
    "（Ｐｒｅｄｉｃｔｉｎｇ）　Ｙｏｕｒ　ｂｌｏｏｄ　ｔｙｐｅ",
    "Ｙｏｕｒ　ｌｅｖｅｌ　ｏｆ　ｕｐｂｒｉｎｇｉｎｇ",
    "Ｙｏｕｒ　ｈｕｍａｎｉｔｙ",
    NULL
};


// [D_089d7a38] DEBUG Results Skills - High Level
struct ResultsSkillData results_skill_data_high[] = {
    /* 0x00 */ {
        /* Weight */ 8,
        /* Desc.  */ results_skill_text_accuracy,
        /* Calc.  */ results_measure_skill_accuracy
    },
    /* 0x01 */ {
        /* Weight */ 5,
        /* Desc.  */ results_skill_text_hit_avg,
        /* Calc.  */ results_measure_skill_hit_avg
    },
    /* 0x02 */ {
        /* Weight */ 10,
        /* Desc.  */ results_skill_text_barely_trk2,
        /* Calc.  */ results_measure_skill_barely_trk2
    },
    /* 0x03 */ {
        /* Weight */ 7,
        /* Desc.  */ results_skill_text_barely_trk1,
        /* Calc.  */ results_measure_skill_barely_trk1
    },
    /* 0x04 */ {
        /* Weight */ 0,
        /* Desc.  */ results_skill_text_irrelevant_inputs,
        /* Calc.  */ results_measure_skill_irrelevant_inputs
    },
    /* 0x05 */ {
        /* Weight */ 0,
        /* Desc.  */ results_skill_text_random,
        /* Calc.  */ results_measure_skill_random
    },
    END_OF_RESULTS_SKILL_LIST
};


// [D_089d7a8c] DEBUG Results Skills - OK Level
struct ResultsSkillData results_skill_data_mid[] = {
    /* 0x00 */ {
        /* Weight */ 8,
        /* Desc.  */ results_skill_text_hit_avg,
        /* Calc.  */ results_measure_skill_hit_avg
    },
    /* 0x01 */ {
        /* Weight */ 9,
        /* Desc.  */ results_skill_text_accuracy_lenient,
        /* Calc.  */ results_measure_skill_accuracy_lenient
    },
    /* 0x02 */ {
        /* Weight */ 7,
        /* Desc.  */ results_skill_text_barely_trk2,
        /* Calc.  */ results_measure_skill_barely_trk2
    },
    /* 0x03 */ {
        /* Weight */ 6,
        /* Desc.  */ results_skill_text_barely_trk1,
        /* Calc.  */ results_measure_skill_barely_trk1
    },
    /* 0x04 */ {
        /* Weight */ 0,
        /* Desc.  */ results_skill_text_irrelevant_inputs,
        /* Calc.  */ results_measure_skill_irrelevant_inputs
    },
    /* 0x05 */ {
        /* Weight */ 0,
        /* Desc.  */ results_skill_text_random,
        /* Calc.  */ results_measure_skill_random
    },
    END_OF_RESULTS_SKILL_LIST
};


// [D_089d7ae0] DEBUG Results Skills - Low Level
struct ResultsSkillData results_skill_data_low[] = {
    /* 0x00 */ {
        /* Weight */ 9,
        /* Desc.  */ results_skill_text_miss,
        /* Calc.  */ results_measure_skill_miss
    },
    /* 0x01 */ {
        /* Weight */ 6,
        /* Desc.  */ results_skill_text_accuracy_lenient,
        /* Calc.  */ results_measure_skill_accuracy_lenient
    },
    /* 0x02 */ {
        /* Weight */ 9,
        /* Desc.  */ results_skill_text_miss_trk2,
        /* Calc.  */ results_measure_skill_miss_trk2
    },
    /* 0x03 */ {
        /* Weight */ 6,
        /* Desc.  */ results_skill_text_barely_trk1,
        /* Calc.  */ results_measure_skill_barely_trk1
    },
    /* 0x04 */ {
        /* Weight */ 0,
        /* Desc.  */ results_skill_text_irrelevant_inputs,
        /* Calc.  */ results_measure_skill_irrelevant_inputs
    },
    /* 0x05 */ {
        /* Weight */ 0,
        /* Desc.  */ results_skill_text_random,
        /* Calc.  */ results_measure_skill_random
    },
    END_OF_RESULTS_SKILL_LIST
};
