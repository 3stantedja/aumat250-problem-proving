#!/bin/bash
TEXLIVE="http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz"
TEXLIVEFILE="install-tl-unx.tar.gz"
lPATHS="texlive.sh"
ROOTDIR=/usr/local/texlive/2019
USERDIR=$HOME/.texlive2019

export PATH=/usr/local/texlive/2019/bin/x86_64-linux:$PATH 

# Clean up previous installations if it fails previously
sudo rm -rf $ROOTDIR
sudo rm -rf $USERDIR

# Download a latest copy of TeX Live
wget $TEXLIVE 
tar -xzvf $TEXLIVEFILE

# Start installation with provided profile
cd install-tl-20*
sudo ./install-tl --profile=../texlive.profile

sudo cp $lPATH /etc/profile.d/$lPATH && source /etc/profile.d/$lPATH
sudo env PATH="$PATH" tlmgr path add

sudo tlmgr update --self
