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
sudo apt update
sudo apt full-upgrade -y
sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt install bc python3 python-is-python3 rclone default-jre bison build-essential ccache curl flex g++-multilib gcc-multilib git gnupg gperf imagemagick lib32ncurses5-dev lib32readline-dev lib32z1-dev liblz4-tool libncurses5 libncurses5-dev libsdl1.2-dev libssl-dev libwxgtk3.0-gtk3-dev libxml2 libxml2-utils lzop pngcrush rsync schedtool squashfs-tools xsltproc zip zlib1g-dev -y
sudo apt-get install openjdk-8-jre -y
echo -e "Done."

echo -e "\creating bin dir and repo..."
mkdir ~/bin
PATH=~/bin:$PATH
cd ~/bin

curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo

echo -e "\nGit\n"
git config --global user.name “Nishant Kumar”
git config --global user.email “www.rajsonu13@gmail.com”
git config --global credential.helper cache
echo -e "Done."
