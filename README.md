
# Rhythm Heaven Advance

![Rhythm Heaven Advance](media/rha.png?raw=true "Rhythm Heaven Advance")

An unofficial English localization patch for *Rhythm Tengoku (ãƒªã‚ºãƒ?å¤©å›½)* on the Game Boy Advance.

## About

**Rhythm Heaven Advance** is a fan-made localization project for *Rhythm Tengoku*. This project provides a complete English translation patch for the game.

## Installation

### Requirements

- A legally obtained ROM of *Rhythm Tengoku* **(Rev 0)** with CRC32 checksum: `349D7025`
- An IPS patcher tool (recommended: [ROM Patcher JS](https://www.marcrobledo.com/RomPatcher.js/))

### Steps

1. Download the latest `.ips` patch file from the [Releases](https://github.com/ShaffySwitcher/RhythmHeavenAdvance/releases) page
2. Open your IPS patcher tool
3. Select your *Rhythm Tengoku* ROM
4. Apply the downloaded patch
5. Load the patched ROM in your emulator or flashcard

## Building from Source

### Prerequisites

All platforms require:
- A legally obtained ROM of *Rhythm Tengoku* **(Rev 0)** (CRC32: `349D7025`)
- Git

### Windows

Use the [Linux instructions](#linux) via Windows Subsystem for Linux (WSL). Debian or Ubuntu distributions are recommended.

To set up WSL:
```bash
wsl --install
```

Then follow the Linux build instructions below.

### Linux

#### Dependencies

Install the required packages (Ubuntu/Debian):
```bash
sudo apt-get update
sudo apt-get install build-essential binutils-arm-none-eabi git libpng-dev ffmpeg
```

#### Install devkitPro

```bash
# Download and install devkitPro pacman
wget https://apt.devkitpro.org/install-devkitpro-pacman
chmod +x ./install-devkitpro-pacman
sudo ./install-devkitpro-pacman

# Set environment variables
export DEVKITPRO=/opt/devkitpro
export DEVKITARM=/opt/devkitpro/devkitARM
export DEVKITPPC=/opt/devkitpro/devkitPPC

# Install GBA development tools
sudo dkp-pacman -Sy
sudo dkp-pacman -S gba-dev
```

#### Clone and Build

1. **Clone this repository:**
   ```bash
   git clone https://github.com/ShaffySwitcher/RhythmHeavenAdvance.git
   cd RhythmHeavenAdvance
   ```

2. **Set up agbcc:**
   ```bash
   git clone https://github.com/pret/agbcc.git
   cd agbcc
   ./build.sh
   ./install.sh ../RhythmHeavenAdvance
   cd ..
   ```

3. **Place your ROM:**
   - Copy your *Rhythm Tengoku* ROM into the project root directory
   - Rename it to `baserom.gba` (or as specified in the Makefile)

4. **Build the project:**
   ```bash
   make -j$(nproc)
   ```

The patched ROM will be generated in the `build/` directory.

### macOS

macOS build instructions are coming soon!

## Credits
Check out the full credits [here](CREDITS.md)!

## License

This project is licensed under the terms specified in [LICENSE.txt](LICENSE.txt).

The license covers the code I've written for this project, NOT any of the assets or other parts I haven't written. This is a fan-made patch and is not affiliated with or endorsed by Nintendo. You must own a legal copy of *Rhythm Tengoku* to use this patch.

For licensing inquiries, please see the [Contact](#contact) section.

All rights reserved concerning the assets to the original authors as it is unlicensed.

## Contact

For questions, suggestions, or licensing inquiries:

- **Discord:** shaffyswitcher
- **GitHub Issues:** [Report bugs or request features](https://github.com/ShaffySwitcher/RhythmHeavenAdvance/issues)


## Disclaimer

This is an unofficial fan project and is not affiliated with, endorsed by, or associated with Nintendo. All trademarks and copyrights belong to their respective owners. This patch is intended for personal use only with legally obtained copies of the game.
