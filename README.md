[**>>> Download the nightly build here! <<<**](https://nightly.link/ShaffySwitcher/RhythmHeavenAdvance/workflows/build/main/rhythmheavenadvance-nightly.zip)

**⚠️ This is not the main Advance repository. Please refer to the parent repository for main development!**

# Rhythm Heaven Advance: Ex-Director's Cut
![Rhythm Heaven Advance : Ex-Director's Cut](images/logo.png?raw=true "Rhythm Heaven Advance : Ex-Director's Cut")

This is a personal fork of the main Advance repository, it includes custom games, quality-of-life improvements, and other tweaks not present in the mainline version.

## Installation
### Requirements

You will need:
* A legally obtained ROM of **Rhythm Tengoku (Rev 0)**
  - CRC32: `349D7025`
* An IPS patcher (e.g., [RomPatcher.js](https://www.marcrobledo.com/RomPatcher.js/))

## Building

### Requirements
- A legally obtained ROM of **Rhythm Tengoku (Rev 0)** (CRC32: `349D7025`)
- A Unix-like environment (Linux/macOS/WSL2 recommended)

### Setup Instructions
```bash
# Clone the Ex-Director's Cut repo
git clone https://github.com/ShaffySwitcher/RhythmHeavenAdvance RhythmHeavenAdvanceEDC
cd RhythmHeavenAdvanceEDC

# Clone and set up agbcc
git clone https://github.com/pret/agbcc
cd agbcc
./build.sh
./install.sh ../

# Go back and build the project
cd ../
# Place your ROM (Rev 0) inside this folder
make -j$(nproc)
```

## Credits
*T.B.D. by the Advance team...*