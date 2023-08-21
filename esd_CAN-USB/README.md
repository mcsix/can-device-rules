# Files for ESD CAN-USB/2 device

## Precautions

- You may need to edit the rules to make them work on your system.
- The files are tested only on one PC running Ubuntu 20.04.6 LTS.

## Installation

1. run `sudo ./install.sh`
2. Connect your device and test if it works.
3. If encountering problems, check `/etc/systemd/network/80-can.network` and modify if necessary.