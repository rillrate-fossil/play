FROM fedora:33
RUN dnf update -y
RUN dnf install -y python nodejs bat
RUN echo "source /root/.profile" >> /root/.bashrc
COPY .profile /root/.profile
COPY ./play /play
WORKDIR /play
