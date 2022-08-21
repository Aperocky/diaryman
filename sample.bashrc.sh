export DIARY_DIR="/path/to/your/directory"
export learning_path="/path/to/your/directory"
alias diary="/bin/bash /path/to/diaryman.sh"
alias learn="python /path/to/learning.py"

# Some minor terminal functions

..(){
    if [[ -z "$1" ]]; then
        cd ..
    else
        dragic=$(( $1 - 1 ));
        upstairs="..$(printf '/..%.0s' $(seq 1 $dragic))";
        cd $upstairs;
    fi
}
