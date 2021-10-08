if [ -a out ]; then
    echo "/out detected"
else
    mkdir out
    echo "/out created"
fi

if [ -a bin ]; then
    echo "/bin detected"
else
    mkdir bin
        echo "/bin created"
fi


nasm sector1/bootloader.asm -f bin -o bin/bootloader.bin
nasm sector2/exProgram.asm -f bin -o bin/exProgram.bin

cat bin/bootloader.bin bin/exProgram.bin > out/bootloader.flp
