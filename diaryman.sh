#!/bin/bash
# Change to the diary directory
# Set your DIARY_DIR in bashrc. else it goes into home folder.
cd $DIARY_DIR;

# Get current date
year=$(date +%Y);
month=$(date +%m);
day=$(date +%d);

# Create folders if they don't exist.
if [[ ! -d $year ]]; then
    mkdir $year;
    cd $year;
else
    cd $year;
fi

if [[ ! -d $month ]]; then
    mkdir $month;
    cd $month;
else
    cd $month;
fi

# Create diary files in the appropriate places and opens them.
# VIM > EMACS.
datename=$(date +%F)
if [[ ! -f "$datename.md" ]]; then
    touch "$datename.md";
    echo "## $datename, $(date +%A)" >> "$datename.md";
    vim "$datename.md";
else
    vim "$datename.md";
fi
