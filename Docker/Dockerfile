FROM debian:buster-slim

RUN echo "deb http://ftp.debian.org/debian buster-backports main" > /etc/apt/sources.list.d/backports.list
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install build-essential libboost-dev libsodium-dev libncurses5-dev libprotobuf-dev protobuf-compiler cmake libgflags-dev libutempter-dev cmake git file -y
RUN git clone --recurse-submodules https://github.com/MisterTea/EternalTerminal.git --depth=1
RUN cd EternalTerminal && \
        mkdir build && \
        cd build && \
        cmake ../ && \
        make
RUN git clone https://github.com/giuliomoro/checkinstall && \
        apt-get install gettext -y && \
        cd checkinstall && \
        make install
RUN cd EternalTerminal/build && checkinstall --pkgname et --requires libprotobuf-lite17 --install=no -D -y
RUN cd EternalTerminal/build && \
    ls -la 
