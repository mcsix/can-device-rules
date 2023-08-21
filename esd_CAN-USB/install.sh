#!/bin/bash

if [ "$(id -u)" -ne 0 ]
  then echo "Please run as root"
  exit
fi

echo "Installing ESD CAN-USB/2 auto-start service..."
cp ./80-can.network /etc/systemd/network/
sudo systemctl restart systemd-networkd
echo "Done."
echo "============================================"
echo "If having issues, check the following files:"
echo "/etc/systemd/network/80-can.network"
