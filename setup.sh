#!/bin/bash

curl https://raw.githubusercontent.com/jellynian/jellyvim/master/.vimrc > ~/.vimrc

vim jellyvim -c "BundleInstall" -c "q" -c "q"

rm -fr jellyvim

