Native Oberon 2003-01-05
========================

This directory contains a harddisk image with an installed and configured
version of ETH's Native Oberon from Jan 5, 2003, sometimes apparently
called "2.3.7 Alpha".

Besides the disk image, it also contains a Linux shell script to start
it in qemu.

Although the installation of Native Oberon 2003-01-05 in a VM is *way*
simpler than installing 2.3.6 (see that README for more details), 
going through the whole setup is rather cumbersome. Also, ETH's
ftp server containing the packages is gone, so finding the software
is somewhat tricky. Therefore, I'm providing a disk image primarily
for my own convenience. 

What's in the image?
--------------------
The installation...
- contains all additional software packages,
- is configured to use a 1600x1200 display
- has its network configured (with qemu's defaults as docuemnted on
  https://wiki.qemu.org/Documentation/Networking#Virtual_Network_Devices)
