FROM fedora:33
RUN dnf update -y
RUN dnf install -y python nodejs bat
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain stable
RUN echo 'source $HOME/.cargo/env' >> $HOME/.bashrc
RUN dnf install -y clang
RUN $HOME/.cargo/bin/cargo install mdcat
RUN echo "source $HOME/.profile" >> $HOME/.bashrc
ENV RILLRATE_CONFIG=/play/rillrate.toml
RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -
RUN echo "source $HOME/.poetry/env" >> $HOME/.bashrc

COPY .profile /root/.profile
COPY ./play /play
WORKDIR /play
