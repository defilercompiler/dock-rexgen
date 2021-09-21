FROM ubuntu:latest
RUN apt update
RUN apt -y install sudo
RUN ln -snf /usr/share/zoneinfo/$CONTAINER_TIMEZONE /etc/localtime && echo $CONTAINER_TIMEZONE > /etc/timezone
RUN sudo apt-get -y install flex libbison-dev cmake clang git
RUN git clone https://github.com/janstarke/rexgen
WORKDIR rexgen
RUN ./install.sh
RUN ldconfig
CMD rexgen
