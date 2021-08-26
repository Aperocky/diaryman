#!/bin/bash
# Change to the diary directory
# Set your DIARY_DIR in bashrc. else it goes into home folder.
cd $DIARY_DIR;

# Get current date or date you want to make up for
if [[ ! -z "$1" ]]; then
    year=$(date -jf %Y-%m-%d $1 +%Y);
    month=$(date -jf %Y-%m-%d $1 +%m);
    datename=$1
    weekday=$(date -jf %Y-%m-%d $1 +%A);
else
    year=$(date +%Y);
    month=$(date +%m);
    datename=$(date +%F);
    weekday=$(date +%A);
fi

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
if [[ ! -f "$datename.md" ]]; then
    touch "$datename.md";
    echo "## $datename, $weekday" >> "$datename.md";
    vim "$datename.md";
else
    vim "$datename.md";
fi
