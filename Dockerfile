#
# Dockerfile for telegram2irc-bot.
#

FROM alpine
MAINTAINER stawidy <duyizhaozj321@yahoo.com>

USER root
ARG GIT_URL=https://github.com/wfjsw/telegram2irc-bot.git
ARG SRC_DIR=/telegram2irc-bot

WORKDIR /home/orzbot

RUN set -x \
    && apk add --no-cache --virtual .build-deps \
                                    autoconf \
                                    build-base \
                                    git \
                                    icu-dev \
                                    python \
                                    shadow \
                                    yarn \
    && apk add --no-cache nodejs \
    && useradd -ms /bin/bash orzbot \
    && git clone $GIT_URL \
    && cd telegram2irc-bot \
    && git checkout 4fb33a605188f3e89d546a169422b8248f3991ab \
    && cp main.js  nickmap.js  package.json  pvimcn.js .. \
    && cd .. \
    && sed -i "s/\"request\"\: \"\^2.61.0\"/\"request\"\: \"\^2.61.0\",/" package.json \
    && rm -rf telegram2irc-bot \
    && yarn install \
    && mkdir config \
    && apk del .build-deps \
    && rm -rf /tmp/*

USER orzbot
VOLUME ["/home/orzbot/config"]

CMD ["node", "main.js", "config"]