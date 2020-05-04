export DIARY_DIR="/path/to/your/directory"
export learning_path="/path/to/your/directory"
alias diary="/bin/bash /path/to/diaryman.sh"
alias learn="python /path/to/learning.py"

# Some in my mind very essential terminal functions

..(){
    if [[ -z "$1" ]]; then
        cd ..
    else
        dragic=$(( $1 - 1 ));
        upstairs="..$(printf '/..%.0s' $(seq 1 $dragic))";
        cd $upstairs;
    fi
}

ag(){
    grep -Inir -A2 -B2 $1 .
}

Color_Off='\033[0m'       # Text Reset
Black='\033[0;30m'        # Black
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
White='\033[0;37m'        # White
cecho(){
  printf "${!1}${2} ${Color_Off}\n";
}

