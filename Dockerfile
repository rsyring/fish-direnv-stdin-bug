# Use Ubuntu 23.10 as the base image
FROM ubuntu:23.10

# Avoid prompts from apt
ENV DEBIAN_FRONTEND=noninteractive

# Install necessary packages to add a PPA
RUN apt-get update && \
    apt-get install -y software-properties-common

# Add the official Fish shell PPA
RUN add-apt-repository ppa:fish-shell/release-3

# Install Fish shell
RUN apt-get update && \
    apt-get install -y fish wget


RUN wget https://github.com/direnv/direnv/releases/download/v2.33.0/direnv.linux-amd64 -O direnv \
    && chmod +x direnv \
    && mv direnv /usr/local/bin

WORKDIR /root

COPY envrc example/.envrc
COPY config.fish .config/fish/config.fish
RUN echo 'eval "$(direnv hook bash)"' >> .bashrc

RUN direnv allow example/.envrc

