#!/bin/sh
local usb_stick=$(dirname $0)
if [ -d "$HOME/.ssh" ]; then
  mv -v "$HOME/.ssh" "$HOME/.ssh.back"
else
  mkdir -v "$HOME/.ssh.back"
fi
cp -vr "$usb_stick/.ssh" "$HOME/.ssh"
