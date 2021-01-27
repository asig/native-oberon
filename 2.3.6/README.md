Native Oberon 2.3.6
===================

This directory contains a harddisk image with an installed and configured
version of ETH's Native Oberon 2.3.6.

Besides the disk image, it also contains a Linux shell script `start.sh`
to start Oberon in qemu.

The installation of Native Oberon 2.3.6 in a VM was surprisingly hard.
In qemu, the `oberon0.dsk` boot diskette boots, but quickly fails with
"Boot.Bin checksum bad". In VMWare Player 16, the boot diskette works
properly, but eventually VMWare Player complains about a non-standard
disk image and terminates. The only setup flow that worked for me was
this:

1) Use VirtualBox to create a new DOS VM
2) Use FreeDOS or MS-DOS to create a FAT partition on the disk.
3) Boot with oberon0.Dsk and run the installation.
4) Convert the VDI image to RAW so that it works nicely with qemu with
   the command below:

```
vbox-img convert \
  --srcfilename Native\ Oberon.vdi \
  --dstfilename Native\ Oberon.img \
  --dstformat RAW
```

What's in the image?
--------------------
The installation...
- contains all additional software packages,
- is configured to use a 1280x1024 display,
- uses Gadgets as default
- has its network configured (with qemu's defaults as docuemnted on
  https://wiki.qemu.org/Documentation/Networking#Virtual_Network_Devices)

Setting up additional software
------------------------------
2.3.6 can't mount FAT partitions, so the easiest way to install additional
software is to create MS-DOS formatted floppy images, and install the 
software via those images.

The `create_floppies.sh` script creates images for all the addtional software
packages, as well as the NE2000 PCI network driver. You can use this script
as an example for how to create your own images.