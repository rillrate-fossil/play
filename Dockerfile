FROM fedora:33

ENV RILLRATE_CONFIG=/play/rillrate.toml

COPY .profile $HOME/.profile
COPY ./play /play
RUN /play/install.sh

WORKDIR /play
