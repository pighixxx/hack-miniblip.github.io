#!/bin/bash
echo 'SUBSYSTEM=="block", ATTR{size}=="68", SYMLINK="MINIBLIP"' > /etc/udev/rules.d/60-miniblip.rules
udevadm control --reload
echo "/dev/MINIBLIP /media/$SUDO_USER/MINIBLIP vfat noauto,rw,user,sync 0 0" >> /etc/fstab
