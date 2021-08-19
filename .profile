cat /play/README.md

function cd {
    builtin cd "$1"
    if [ -s "README.md" ]
    then
        cat README.md
    fi
}
