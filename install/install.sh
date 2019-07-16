#!/bin/bash

PREFIX="${PWD}/ccs"

# CCS
wget http://downloads.ti.com/ccs/esd/CCSv9/CCS_9_0_0/exports/CCS9.0.1.00004_linux-x64.tar.gz
tar -xvf CCS9.0.1.00004_linux-x64.tar.gz
echo "Installing CCS to ${PREFIX}"
./CCS9.0.1.00004_linux-x64/ccs_setup_linux64_9.0.1.00004.bin --mode unattended --prefix ${PREFIX} --response-file ${PWD}/ccs_responses.txt

# BIOS
wget http://downloads.ti.com/dsps/dsps_public_sw/sdo_sb/targetcontent/dspbios/5_42_02_10/exports/bios_setuplinux_5_42_02_10.bin
chmod +x /bios_setuplinux_5_42_02_10.bin
echo "Installing DSP/BIOS to ${PREFIX}"
./bios_setuplinux_5_42_02_10.bin --response-file ${PWD}/bios_responses.txt --prefix ${PREFIX} --mode silent

echo "Run CCS and install BIOS/DSP modules: ${PREFIX}/ccs/eclipse/cstudio"
echo "After that you will have CCS installation ready for tarball."
