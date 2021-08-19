FROM fedora:34

ENV VERSION=v0.34.0-rc.4

RUN dnf update -y
RUN dnf install -y python nodejs clang vim
RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain stable

RUN echo "source $HOME/.poetry/env" >> $HOME/.bashrc \
 && echo "source $HOME/.cargo/env" >> $HOME/.bashrc \
 && echo "source $HOME/.profile" >> $HOME/.bashrc

RUN $HOME/.cargo/bin/cargo install mdcat

ENV RILLRATE_CONFIG=/play/rillrate.toml

COPY .profile /root/.profile
COPY ./play /play
RUN /play/install.sh

WORKDIR /play
