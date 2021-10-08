### Simple Bootloader for learning purpose
##### Run on an emulator in Linux (Ubuntu 21.x)
Run this command form root folder

```shell
  $ ./compile.sh
```
This will Produce 2 folders `/bin` and `/out`. `/bin` contains binary files that we don't need to worry about.
`/out` contains a (floppy disk) image file `bootloader.flp` which we can run on an emulator.

Tested on QEMU, Ubuntu 21.04.
