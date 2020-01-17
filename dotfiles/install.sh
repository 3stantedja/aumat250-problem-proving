#!/bin/bash
TEXLIVE="http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz"
TEXLIVEFILE="install-tl-unx.tar.gz"
ROOTDIR=/usr/local/texlive/2019
USERDIR=$HOME/.texlive2019

export PATH=/usr/local/texlive/2019/bin/x86_64-linux:$PATH 

# Clean up previous installations if it fails previously
rm -rf $ROOTDIR
rm -rf $USERDIR

# Download a latest copy of TeX Live and extract to "install-tl"
wget $TEXLIVE && tar -xzvf $TEXLIVEFILE -C install-tl
 
cd install-tl
sudo ./install-tl --profile=texlive.profile

tlmgr update --self
