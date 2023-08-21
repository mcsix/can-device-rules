#!/bin/bash

if [ "$(id -u)" -ne 0 ]
  then echo "Please run as root"
  exit
fi

echo "Installing VScom USB-CAN Plus auto-start service..."
cp ./99-VScom_USB-CAN_Plus.rules /etc/udev/rules.d/
cp ./slcan_add.sh /usr/local/bin/
cp ./slcan@.service /etc/systemd/system/
systemctl daemon-reload
udevadm control --reload-rules
echo "Done."
echo "============================================"
echo "If having issues, check the following files:"
echo "/etc/udev/rules.d/99-VScom_USB-CAN_Plus.rules"
echo "/usr/local/bin/slcan_add.sh"
echo "/etc/systemd/system/slcan@.service"
