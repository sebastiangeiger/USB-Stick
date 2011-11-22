#!/bin/sh
if [ -d "$HOME/.ssh.back" ]; then
  rm -rvf "$HOME/.ssh"
  mv -v "$HOME/.ssh.back" "$HOME/.ssh"
else
  echo "An error occured, ssh.back did not exist. Are you sure you used install_ssh_keys first?"
fi
