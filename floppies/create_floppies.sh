#/bin/bash

make_img() {
  dd if=/dev/zero of=$1 bs=1k count=1440
  mkdosfs $1
}

mkdir /tmp/floppy

make_img gadgets.img
sudo mount gadgets.img /tmp/floppy
sudo cp gadgets.arc /tmp/floppy
sudo umount /tmp/floppy

make_img gadgets1.img
sudo mount gadgets1.img /tmp/floppy
sudo cp gadgets1.arc /tmp/floppy
sudo umount /tmp/floppy

make_img docu.img
sudo mount docu.img /tmp/floppy
sudo cp docu.arc /tmp/floppy
sudo umount /tmp/floppy

make_img apps.img
sudo mount apps.img /tmp/floppy
sudo cp apps.arc /tmp/floppy
sudo umount /tmp/floppy

make_img tutorial.img
sudo mount tutorial.img /tmp/floppy
sudo cp tutorial.arc /tmp/floppy
sudo cp pr3fonts.arc /tmp/floppy
sudo cp pr6fonts.arc /tmp/floppy
sudo umount /tmp/floppy

make_img source1.img
sudo mount source1.img /tmp/floppy
sudo cp source1.arc /tmp/floppy
sudo umount /tmp/floppy

make_img source2.img
sudo mount source2.img /tmp/floppy
sudo cp source2.arc /tmp/floppy
sudo umount /tmp/floppy

make_img source3.img
sudo mount source3.img /tmp/floppy
sudo cp source3.arc /tmp/floppy
sudo umount /tmp/floppy

rm -rf /tmp/floppy