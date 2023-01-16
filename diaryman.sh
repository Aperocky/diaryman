#!/bin/bash
# Change to the diary directory
# Set your DIARY_DIR in bashrc. else it goes into home folder.
cd $DIARY_DIR;

if [[ ! -z "$1" ]]; then
    # cat the current days' diary in terminal for copying
    if [[ "$1" == "cat" ]]; then
        year=$(date +%Y);
        month=$(date +%m);
        datename=$(date +%F);
        cd $year;
        cd $month;
        cat "$datename.md";
        if [ "$?" -ne "0" ]; then
            echo "Create the diary first before cat";
            exit 1;
        fi
        exit 0;
    fi
    # Allowing retroactive diary entries with $ diary Y-m-d
    # Validate date format
    date -jf %Y-%m-%d $1 > /dev/null 2>&1;
    if [ "$?" -ne "0" ]; then
        echo "Date is not formatted correctly";
        exit 1;
    fi
    year=$(date -jf %Y-%m-%d $1 +%Y);
    month=$(date -jf %Y-%m-%d $1 +%m);
    datename=$1;
    weekday=$(date -jf %Y-%m-%d $1 +%A);
else
    # By default, if there are no argument, it creates/open the current days' file.
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
