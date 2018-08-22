FROM ubuntu

COPY ./entrypoint.sh /

RUN apt-get update && apt-get install -y \
        wget \
        x11-utils \
        xdotool \
        wmctrl

RUN wget -O /usr/bin/thyme https://github.com/sourcegraph/thyme/releases/download/0.2.3/thyme-linux-386 

RUN chmod +x /usr/bin/thyme /entrypoint.sh

ENTRYPOINT /entrypoint.sh
