FROM ubuntu:latest AS builder

# Update Ubuntu and clean
RUN apt update && apt-get dist-upgrade -y && apt-get autoremove -y && apt-get autoremove -y

# Install libs
RUN apt install -y git && apt install -y make && apt install -y python3 && apt install -y gcc-arm-none-eabi

# Clone Blackmagic
RUN git clone https://github.com/blackmagic-debug/blackmagic.git

# Run build target
WORKDIR /blackmagic
RUN make PROBE_HOST=blackpill-f401cc
