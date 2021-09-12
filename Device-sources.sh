#!/bin/bash
#Script for syncing my Device source's

# Go to home dir
orig_dir=$(pwd)
cd $HOME

#Go to source dir
cd bin/scripts/...!

echo -e "\Cloning DT\n"
git clone https://github.com/Patriot-06/device_realme_x3 device/realme/x3

echo -e "\Cloning VT\n"
git clone https://github.com/Patriot-06/vendor-realme-x3 vendor/realme/x3

echo -e "\Cloning KT\n"
git clone https://github.com/Patriot-06/kernel_realme_x3 kernel/realme/x3

echo -e "\Cloning Device source's done\n"
