#/bin/bash

source ./tools/config.sh

#
# CLONE/UPDATE TINYUSB
#
echo "Updating TinyUSB..."
TINYUSB_REPO_URL="https://github.com/hathach/tinyusb.git"
TINYUSB_REPO_DIR="$AR_COMPS/arduino_tinyusb/tinyusb"
if [ ! -d "$TINYUSB_REPO_DIR" ]; then
    git clone "$TINYUSB_REPO_URL" "$TINYUSB_REPO_DIR"
fi
if [ $? -ne 0 ]; then exit 1; fi

cd "$TINYUSB_REPO_DIR"
git checkout 9ca4bc89a7e285796e8102eb7a8fd1bbc6fb9938
cd -
