bat --style=plain /play/README.md

function cd {
    builtin cd "$1"
    if [ -s "README.md" ]
    then
        bat --style=plain README.md
    fi
}
