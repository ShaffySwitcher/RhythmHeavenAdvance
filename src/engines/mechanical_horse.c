#include "engines/mechanical_horse.h"

asm(".include \"include/gba.inc\""); // Temporary

// For readability.
#define gMechanicalHorse ((struct MechanicalHorseEngineData *)gCurrentEngineData)


/* MECHANICAL HORSE */


#include "asm/engines/mechanical_horse/asm_08040c2c.s"

#include "asm/engines/mechanical_horse/asm_08040c58.s"

#include "asm/engines/mechanical_horse/asm_08040cfc.s"

#include "asm/engines/mechanical_horse/asm_08040d10.s"

#include "asm/engines/mechanical_horse/asm_08040d90.s"

#include "asm/engines/mechanical_horse/asm_08040dd8.s"

#include "asm/engines/mechanical_horse/asm_08040e80.s"

#include "asm/engines/mechanical_horse/asm_08040eb0.s"

#include "asm/engines/mechanical_horse/asm_08040f00.s"

#include "asm/engines/mechanical_horse/asm_08040f10.s"

#include "asm/engines/mechanical_horse/asm_08040f40.s"

#include "asm/engines/mechanical_horse/asm_08040f6c.s"

#include "asm/engines/mechanical_horse/asm_08041444.s"

void func_080415c0(u32 lesson) {
    u8 i;
    gMechanicalHorse->unk2cc = lesson;

    sprite_set_anim(gSpriteHandler, gMechanicalHorse->horse[1].sprite, mechanical_horse_anim[lesson], 0, 0, 0, SPRITE_PLAYBACK_NORMAL_LOOP);
    sprite_set_anim(gSpriteHandler, gMechanicalHorse->jockey[1].sprite, mechanical_horse_jockey_anim[lesson], 0, 0, 0, SPRITE_PLAYBACK_NORMAL_LOOP);

    for(i = 0; i < 4; i++){
        gMechanicalHorse->unk26c[i].pos_x = INT_TO_FIXED(D_0805aab0[lesson][i]);

        sprite_set_x_y(gSpriteHandler, gMechanicalHorse->unk26c[i].sprite, FIXED_TO_INT(gMechanicalHorse->unk26c[i].pos_x), FIXED_TO_INT(gMechanicalHorse->unk26c[i].pos_y));
        sprite_set_anim(gSpriteHandler, gMechanicalHorse->unk26c[i].sprite, mechanical_horse_lesson_text_anim[lesson][i], 1, 0, 0, SPRITE_PLAYBACK_NORMAL_LOOP);
    }
}

#include "asm/engines/mechanical_horse/asm_080416cc.s"

#include "asm/engines/mechanical_horse/asm_08041730.s"

void func_08041744(u32 arg0) {
    u8 i;
    gMechanicalHorse->unk2e9 = arg0;
    for (i = 0; i < 4; i++) {
        sprite_set_visible(gSpriteHandler, gMechanicalHorse->unk26c[i].sprite, arg0);
    }
    if (arg0 == 0 && gMechanicalHorse->unk2cc == 3) {
        gMechanicalHorse->unk2e9 = 1;
    }
}

#include "asm/engines/mechanical_horse/asm_080417ac.s"

#include "asm/engines/mechanical_horse/asm_0804188c.s"

#include "asm/engines/mechanical_horse/asm_08041940.s"

void func_08041970(void) {
    u8 i;
    u8 temp1;
    u32 temp2;
    for (i = 0; i < 20; i++) {
        switch (gMechanicalHorse->unk3c[i].unk2) {
            case 2:
            case 3:
                temp1 = FALSE;
                if (gMechanicalHorse->unk3c[i].unk2 == 2) {
                    temp1 = TRUE;
                }

                if (temp1) {
                    gMechanicalHorse->unk3c[i].pos_x = gMechanicalHorse->horse[0].pos_x;
                    gMechanicalHorse->unk3c[i].pos_z = INT_TO_FIXED(128.0078125);
                } else {
                    gMechanicalHorse->unk3c[i].pos_x = gMechanicalHorse->horse[1].pos_x;
                    gMechanicalHorse->unk3c[i].pos_z = INT_TO_FIXED(128.01953125); //i hate this so much
                }
                gMechanicalHorse->unk3c[i].pos_y = INT_TO_FIXED(96);
                gMechanicalHorse->unk3c[i].unk14[0] = D_0805aa40[gMechanicalHorse->unk2cc][0];
                gMechanicalHorse->unk3c[i].unk14[1] = D_0805aa40[gMechanicalHorse->unk2cc][1];
                gMechanicalHorse->unk3c[i].unk4 = 0;
                if (gMechanicalHorse->unk2cc == 0) {
                    if (gMechanicalHorse->unk3c[i].unk3 == 0 || gMechanicalHorse->unk3c[i].unk3 == 2) {
                        sprite_set_anim(gSpriteHandler, gMechanicalHorse->unk3c[i].sprite, anim_horse_text_pak, 0, 0, 0, 0);
                    } else {
                        sprite_set_anim(gSpriteHandler, gMechanicalHorse->unk3c[i].sprite, anim_horse_text_ka, 0, 0, 0, 0);
                    }
                } else {
                    if (gMechanicalHorse->unk2cc == 1) {     
                        if (gMechanicalHorse->unk3c[i].unk3 == 0 || gMechanicalHorse->unk3c[i].unk3 == 2) {               
                            sprite_set_anim(gSpriteHandler, gMechanicalHorse->unk3c[i].sprite, anim_horse_text_tot, 0, 0, 0, 0);
                        } else {
                            sprite_set_anim(gSpriteHandler, gMechanicalHorse->unk3c[i].sprite, anim_horse_text_ka, 0, 0, 0, 0);
                        }
                    } else if (gMechanicalHorse->unk2cc == 2) {
                        if (gMechanicalHorse->unk3c[i].unk3 == 0) {
                            sprite_set_anim(gSpriteHandler, gMechanicalHorse->unk3c[i].sprite, anim_horse_text_pa, 0, 0, 0, 0);
                        } else if (gMechanicalHorse->unk3c[i].unk3 == 1) {
                            sprite_set_anim(gSpriteHandler, gMechanicalHorse->unk3c[i].sprite, anim_horse_text_ka, 0, 0, 0, 0); 
                        } else {
                            sprite_set_anim(gSpriteHandler, gMechanicalHorse->unk3c[i].sprite, anim_horse_text_rap, 0, 0, 0, 0);
                        }
                    } else {
                        if (gMechanicalHorse->unk3c[i].unk3 <= 2) {
                             sprite_set_anim(gSpriteHandler, gMechanicalHorse->unk3c[i].sprite, anim_horse_text_do, 0, 0, 0, 0);
                        } else {
                             sprite_set_anim(gSpriteHandler, gMechanicalHorse->unk3c[i].sprite, anim_horse_text_dod, 0, 0, 0, 0);
                        }
                    }
                }
                sprite_set_x_y_z(gSpriteHandler, gMechanicalHorse->unk3c[i].sprite, FIXED_TO_INT(gMechanicalHorse->unk3c[i].pos_x), FIXED_TO_INT(gMechanicalHorse->unk3c[i].pos_y), gMechanicalHorse->unk3c[i].pos_z);
                sprite_set_visible(gSpriteHandler, gMechanicalHorse->unk3c[i].sprite, 1);
                gMechanicalHorse->unk3c[i].unk2 = 4;
                break;
            case 4:
                gMechanicalHorse->unk3c[i].pos_x += gMechanicalHorse->unk3c[i].unk14[0];
                gMechanicalHorse->unk3c[i].pos_y += gMechanicalHorse->unk3c[i].unk14[1];
                gMechanicalHorse->unk3c[i].unk14[1] += INT_TO_FIXED(0.125); 
                sprite_set_x_y(gSpriteHandler, gMechanicalHorse->unk3c[i].sprite, FIXED_TO_INT(gMechanicalHorse->unk3c[i].pos_x), FIXED_TO_INT(gMechanicalHorse->unk3c[i].pos_y));
                if ((gMechanicalHorse->unk3c[i].pos_x < INT_TO_FIXED(-16)) || (gMechanicalHorse->unk3c[i].pos_y > INT_TO_FIXED(112))) {
                    gMechanicalHorse->unk3c[i].unk2 = 0;
                    sprite_set_visible(gSpriteHandler, gMechanicalHorse->unk3c[i].sprite, 0);
                }
                break;
            case 1:
                if (gMechanicalHorse->unk3c[i].unk4-- > 0) {
                    break;
                }
                gMechanicalHorse->unk3c[i].unk2 = 3;
                break;
            case 0:
                break;
        }
    }
}

#include "asm/engines/mechanical_horse/asm_08041c98.s"

#include "asm/engines/mechanical_horse/asm_08041ddc.s"

#include "asm/engines/mechanical_horse/asm_08041f80.s"

#include "asm/engines/mechanical_horse/asm_08042020.s"

#include "asm/engines/mechanical_horse/asm_080420c0.s"

#include "asm/engines/mechanical_horse/asm_0804231c.s"

#include "asm/engines/mechanical_horse/asm_08042438.s"

#include "asm/engines/mechanical_horse/asm_0804249c.s"

#include "asm/engines/mechanical_horse/asm_080424f0.s"

#include "asm/engines/mechanical_horse/asm_08042504.s"

#include "asm/engines/mechanical_horse/asm_08042548.s"

#include "asm/engines/mechanical_horse/asm_08042718.s"

#include "asm/engines/mechanical_horse/asm_08042754.s"

#include "asm/engines/mechanical_horse/asm_08042758.s"

#include "asm/engines/mechanical_horse/asm_080427b0.s"

#include "asm/engines/mechanical_horse/asm_080427e8.s"

#include "asm/engines/mechanical_horse/asm_080427ec.s"

#include "asm/engines/mechanical_horse/asm_08042820.s"

#include "asm/engines/mechanical_horse/asm_0804282c.s"

#include "asm/engines/mechanical_horse/asm_0804283c.s"

#include "asm/engines/mechanical_horse/asm_0804285c.s"

#include "asm/engines/mechanical_horse/asm_08042860.s"
