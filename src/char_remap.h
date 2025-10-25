#ifndef GUARD_CHAR_REMAP_H
#define GUARD_CHAR_REMAP_H

/**
 * Remap a 2-byte character pair if it's in the remap table
 * 
 * @param input Input 2-byte character pair
 * @param output Output 2-byte character pair
 * @return TRUE if remapped, FALSE otherwise
 */
u32 char_remap_get(const char *input, char *output);

/**
 * Process an entire string and apply character remapping
 * 
 * @param input Input string
 * @param output Output buffer (must be at least as large as input string)
 */
void char_remap_string(const char *input, char *output);

#endif // GUARD_CHAR_REMAP_H
