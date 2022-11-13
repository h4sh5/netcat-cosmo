#!/bin/bash
FDIR=libcosmo
if [ -d "$FDIR" ]; then
    echo "$FDIR exists, no need to get it"
else 
    echo "creating and extract cosmopolitan libc into $FDIR.."
    mkdir libcosmo
    cd libcosmo
    wget https://justine.lol/cosmopolitan/cosmopolitan.zip
    unzip cosmopolitan.zip
    ls -al
    cd ../
fi


gcc -g -Os -static -nostdlib -nostdinc -fno-pie -no-pie -mno-red-zone \
  -fno-omit-frame-pointer -pg -mnop-mcount -mno-tls-direct-seg-refs -gdwarf-4 \
  -o netcat.com.dbg *.c -fuse-ld=bfd -Wl,-T,libcosmo/ape.lds -Wl,--gc-sections \
  -include libcosmo/cosmopolitan.h libcosmo/crt.o libcosmo/ape-no-modify-self.o libcosmo/cosmopolitan.a \
  -DVERSION=0.72
objcopy -S -O binary netcat.com.dbg netcat.com
