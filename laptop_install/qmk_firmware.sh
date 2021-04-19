# QMK Firmware build environment
brew tap osx-cross/avr
brew tap PX4/homebrew-px4
brew update

# These are super-slow to compile
# -------------------------------
brew install avr-gcc
brew install dfu-programmer
brew install gcc-arm-none-eabi
brew install avrdude