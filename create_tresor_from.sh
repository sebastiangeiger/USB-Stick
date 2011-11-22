#!/bin/sh
if [ $# -ne 1 ]; then
  echo "usage: $(basename $0) [ssh directory]"
  exit 127
fi
cd $(dirname $0)
usb_stick=$(pwd)
echo "usbstick: $usb_stick"
cd "$1"
echo "In directory: $(pwd):"
tar -cvf "$usb_stick/tresor.tar" *
openssl des3 -salt -in "$usb_stick/tresor.tar" -out "$usb_stick/tresor.encrypted"
rm -rf "$usb_stick/tresor.tar"
