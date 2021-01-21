#source $HOME/.cargo/env

mdcat /play/README.md

function cd {
    builtin cd "$1"
    if [ -s "README.md" ]
    then
        mdcat README.md
    fi
}
