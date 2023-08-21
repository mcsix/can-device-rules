# Files for VScom USB-CAN Plus device

## Precautions

- You may need to edit the rules and scripts to make them work on your system.
- The files are tested only on one PC running Ubuntu 20.04.6 LTS.

## Installation

1. run `sudo ./install.sh`
2. Connect your device and test if it works.
3. If encountering problems, check /etc/udev/rules.d/99-VScom_USB-CAN_Plus.rules and edit `ATTRS{idVendor}` and `ATTRS{idProduct}` if necessary.