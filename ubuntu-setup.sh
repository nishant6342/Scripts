#!/bin/bash
#
# Script to set up an Ubuntu 20.04+ server
#
# Sudo access is mandatory to run this script
#
# IMPORTANT NOTICE: This script sets my personal git config, update
# it with your details before you run this script!
#
# Usage:
#	./ubuntu-setup.sh
#

# Go to home dir
orig_dir=$(pwd)
cd $HOME

echo -e "Installing and updating packages...\n"
sudo apt update -qq
sudo apt full-upgrade -y -qq
sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt install bc bison build-essential ccache curl flex g++-multilib gcc-multilib git gnupg gperf imagemagick lib32ncurses5-dev lib32readline-dev lib32z1-dev liblz4-tool libncurses5 libncurses5-dev libsdl1.2-dev libssl-dev libwxgtk3.0-gtk3-dev libxml2 libxml2-utils lzop pngcrush rsync schedtool squashfs-tools xsltproc zip zlib1g-dev -y
sudo apt-get install openjdk-8-jre -y
echo -e "Done."

echo -e "\creating bin dir and repo..."
mkdir ~/bin
PATH=~/bin:$PATH
cd ~/bin

curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo

git clone https://github.com/akhilnarang/scripts.git scripts
cd scripts
bash setup/android_build_env.sh
echo -e "Done."

echo -e "\nInstalling Google Drive CLI..."
wget -q https://raw.githubusercontent.com/usmanmughalji/gdriveupload/master/gdrive
chmod a+x gdrive
sudo install gdrive /usr/local/bin/gdrive
rm gdrive
echo -e "Done."

echo -e "\nGit\n"
git config --global user.name “Patriot-06”
git config --global user.email “mbmc172@gmail.com”
echo -e "Done."
