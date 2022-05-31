#!/bin/bash

#NOTE: ensure raspberry"s openocd fork is the default one being set
ELF_TO_FLASH=$1

if [ -z ${ELF_TO_FLASH} ]
then
    echo "ELF to flash is missing"
    exit -1
fi

openocd -f interface/picoprobe.cfg -f target/rp2040.cfg -c "program ${ELF_TO_FLASH} verify reset exit"
