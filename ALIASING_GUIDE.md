# Character Aliasing Guide

## What This Does

Makes typing accented characters **and controller buttons** easy in your Rhythm Heaven Advance translation!

**Instead of:**
- `"\x87\x51"` Å® type `"e^"` for e with acute accent
- `"\x87\x4D"` Å® type `"@A"` for A button graphic
- `"\x87\x4F"` Å® type `"@D"` for D-pad graphic

---

## Current Aliases (2-Byte System)

### Controller Buttons
- `@A` Å® A button graphic (áM)
- `@B` Å® B button graphic (áN)
- `@D` Å® D-pad graphic (áO)
- `@L` Å® L button graphic (áK)
- `@R` Å® R button graphic (áL)

### Accented Characters
- `e^` Å® ? (e-acute)

---

## Usage Examples

```c
// In your level descriptions:
"Press @A and @D at the\nsame time!"
"Hold @R throughout\nthe game."
"Welcome to Cafe^ Counselling!"
```

The system automatically converts these 2-character codes to the proper button graphics!

---

## How It Works

1. **You replace an unused character graphic** in the font file with your new character (like e-acute)
2. **You create an alias** so you can type it easily (like `e^` instead of hex codes)
3. **The game automatically converts** your alias to the right character

---

## Adding More Accented Characters

### Example: Adding ? (a-grave)

**Step 1: Find a character you'll never use**

Run this to see all the characters:
```bash
python3 tools/show_character_map.py
```

Look for Japanese characters you won't need, like:
- áR (circled 19) = `0x87 0x52`
- áS (circled 20) = `0x87 0x53`

**Step 2: Replace that graphic**

1. Open `bin/text_large_glyphs.bin` in a graphics editor
2. Find the character slot
3. Draw your new character over it
4. Save the file

**Step 3: Add the alias**

Edit `src/char_remap.c` and add your new mapping:

```c
const struct CharRemap char_remap_table[] = {
    // Controller buttons
    {'@', 'A', 0x87, 0x4D},
    {'@', 'B', 0x87, 0x4E},
    {'@', 'D', 0x87, 0x4F},
    {'@', 'L', 0x87, 0x4B},
    {'@', 'R', 0x87, 0x4C},
    
    // Accented characters
    {'e', '^', 0x87, 0x51},   // e^ Å® e-acute
    {'a', '`', 0x87, 0x52},   // a` Å® a-grave (NEW!)
    
    {0x00, 0x00, 0x00, 0x00}  // Keep this end marker!
};
```

**Step 4: Rebuild**

```bash
make -j$(nproc)
```

Done! Now you can type `a\`` in your code and it displays a-grave!

---

## Why 2-Byte Codes?

The system requires **exactly 2 ASCII characters** for each alias:
- `e^` = 2 characters ?
- `@A` = 2 characters ?
- `[A_button]` = too many characters ?

This keeps the system simple and reliable. The game processes text in 2-byte pairs (Shift-JIS encoding), so matching that pattern works perfectly.

---

## ASCII Alias Suggestions

Pick whatever two-character combo makes sense to you:

```
e^  Å® e-acute
e`  Å® e-grave
a'  Å® a-acute
a`  Å® a-grave
n~  Å® n-tilde
u:  Å® u-umlaut
o^  Å® o-circumflex
c,  Å® c-cedilla
i`  Å® i-grave
```

---

## Why ASCII Sequences?

**Short answer:** Your files are UTF-8, the game is Shift-JIS, they don't match.

**What happens if you type an accented character directly:**
- Source file saves it as UTF-8: `0xC3 0xA8`
- Game looks for `0xC3 0xA8` in Shift-JIS
- Not found Å® displays `?`

**What happens with `e^` (ASCII):**
- Source file saves it as: `0x65 0x5E`
- Game checks remapping table
- Finds match! Converts to `0x87 0x52`
- Displays your e-acute graphic ?

**ASCII = universal** - same bytes in UTF-8, ASCII, Shift-JIS, everywhere!

---

## Files You Need to Know

### Core System (already set up)
- `src/char_remap.c` - Where you add new aliases (edit this!)
- `src/char_remap.h` - Header file (don't need to touch)
- `src/text_printer.c` - Integration (don't need to touch)

### Font Files (edit these for new graphics)
- `bin/text_large_glyphs.bin` - Large font character graphics
- `bin/text_small_glyphs.bin` - Small font graphics
- `bin/text_medium_glyphs.bin` - Medium font graphics

### Tools
- `tools/show_character_map.py` - See all character codes
- `tools/analyze_font.py` - Find unused slots

---

## Quick Workflow

1. **Find unused character** Å® `python3 tools/show_character_map.py`
2. **Replace its graphic** Å® Edit `.bin` file in graphics editor
3. **Add 2-byte alias** Å® Edit `src/char_remap.c`
4. **Rebuild** Å® `make -j$(nproc)`
5. **Use it!** Å® Type your alias in source files

---

## Tips

- **Exactly 2 characters** - Each alias must be exactly 2 ASCII characters
- **Pick memorable aliases** - `@A` for A button, `e^` for e-acute makes sense
- **Test one at a time** - Add one new character, test it, then add more
- **Keep notes** - Remember which character codes you used for what

---

## Technical Details

### How It Works

1. You type `@A` in your source code (2 ASCII bytes: `0x40 0x41`)
2. The text printer calls `char_remap_get()` 
3. The function checks the `char_remap_table[]`
4. Finds match: `{'@', 'A', 0x87, 0x4D}`
5. Returns the output bytes: `0x87 0x4D`
6. Game looks up character at Shift-JIS code `0x87 0x4D`
7. Displays the A button graphic!

### Why ASCII?

**Short answer:** Your files are UTF-8, the game is Shift-JIS, they don't match.

**What happens if you type an accented character directly:**
- Source file saves it as UTF-8: `0xC3 0xA9`
- Game looks for `0xC3 0xA9` in Shift-JIS font table
- Not found Å® displays `?`

**What happens with `e^` (ASCII):**
- Source file saves it as: `0x65 0x5E`
- Game checks remapping table
- Finds match! Converts to `0x87 0x51`
- Displays your e-acute graphic ?

**ASCII = universal** - same bytes in UTF-8, ASCII, Shift-JIS, everywhere!

---

## That's It!

The system is working for buttons and the e-acute character. To add more:
1. Replace unused character graphics in the font files
2. Add 2-byte aliases to `src/char_remap.c`
3. Rebuild and use them!

Simple! ?
