if [ ! -f out ]; then
    mkdir out
fi

if [ ! -f bin ]; then
    mkdir bin
fi

nasm sector1/bootloader.asm -f bin -o bin/bootloader.bin
nasm sector2/exProgram.asm -f bin -o bin/exProgram.bin

cat bin/bootloader.bin bin/exProgram.bin > out/bootloader.flp
