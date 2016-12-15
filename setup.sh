#!/bin/bash

zshrc_file=~/.zshrc
if [ -f "$zshrc_file"]; then
    rm $zshrc_file
fi
