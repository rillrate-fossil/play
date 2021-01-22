dnf update -y
dnf install -y python nodejs clang
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -
echo "source $HOME/.poetry/env" >> $HOME/.bashrc

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain stable
echo 'source $HOME/.cargo/env' >> $HOME/.bashrc
echo 'source $HOME/.profile' >> $HOME/.bashrc
source $HOME/.cargo/env
cargo install mdcat
