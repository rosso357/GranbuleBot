FROM node:8.9.4
MAINTAINER uncle <unclesam2501@gmail.com>
RUN apt-get update -y && apt-get install vim -y \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /root/
RUN git clone https://github.com/ouchi2501/dotfiles.git
RUN curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > install.sh && sh ./install.sh
RUN git clone https://github.com/rosso357/GranbuleBot.git
