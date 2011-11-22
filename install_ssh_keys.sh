#!/bin/sh
local usb_stick=$(dirname $0)
if [ -d "$HOME/.ssh" ]; then
  if [ -e "$HOME/.ssh.back" ]; then rm -rf "$HOME/.ssh.back"; fi
  mv -v "$HOME/.ssh" "$HOME/.ssh.back"
else
  mkdir -v "$HOME/.ssh.back"
fi
mkdir "$HOME/.ssh"
openssl des3 -d -salt -in "$usb_stick/tresor.encrypted" -out "$usb_stick/tresor.tar"
tar -C "$HOME/.ssh" -xvf "$usb_stick/tresor.tar" 
rm -rf "$usb_stick/tresor.tar"
