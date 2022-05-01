# FROM cm2network/steamcmd:latest
FROM ubuntu:latest

# Mount the dominions 5 game files as a volume at /dom5
VOLUME ["/dom5"]

# Mount license file as a volume
VOLUME ["/license"]

# Install libraries needed for Dominions 5 server
RUN apt update && apt install -yq \
    libgl1-mesa-glx               \
    libglu1-mesa                  \
    libsdl2-2.0-0                 \
    lsb-release

RUN mkdir -p /dom5
WORKDIR /dom5

CMD [ "sh", "./dom5.sh" ]
