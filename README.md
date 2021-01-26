Setting up Native Oberon 2.3.6 on Ubuntu 20.10
==============================================

Setup is somewhat tricky:
- In qemu, booting from Oberon0.dsk results in "Boot.Bin checksum bad"
- VMWare complains about a bad bootblock, terminating the VM.

Set-up flow that works:

1) Use VirtualBox to create a new DOS VM
2) Install FreeDOS or MS-DOS, and format the harddisk.
3) Boot with Oberon0.Dsk and change the  partition to type 79 (Native Oberon
   and QNX)

Optionally, convert the VDI image to RAW so that it works nicely with qemu,
and that you can use easily extract/add files from/to the image:

```
vbox-img convert \
  --srcfilename Native\ Oberon.vdi \
  --dstfilename Native\ Oberon.img \
  --dstformat RAW
```

Of course, you then also need to adjust the vbox file accordingly.

Now, you can also run Native Oberon with qemu.
