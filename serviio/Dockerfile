FROM alpine:3.9

#ADD serviio-2.0-linux.tar.gz /
#RUN mv serviio-2.0 serviio
ARG VERSION=2.0
RUN wget -qO- http://download.serviio.org/releases/serviio-${VERSION}-linux.tar.gz | tar zxvf - -C . && \
    mv ./serviio-${VERSION} /serviio

RUN apk --no-cache add openjdk8-jre ffmpeg

# DCraw
RUN wget https://www.dechifro.org/dcraw/dcraw.c -O /tmp/dcraw.c ; \
    apk add --no-cache musl-dev gcc libjpeg-turbo-dev lcms2-dev jasper-dev ; \
    gcc -o /usr/bin/dcraw -O4 /tmp/dcraw.c -lm -ljasper -ljpeg -llcms2 ; \
    apk del --purge gcc

RUN mkdir /serviio/log/ && touch /serviio/log/serviio.log

# YouTube
RUN wget https://forum.serviio.org/download/file.php?id=5196 -O /serviio/plugins/youtube-dl.groovy ; \
    sed -i "s/dl.exe/dl/g" /serviio/plugins/youtube-dl.groovy ; \
    wget https://yt-dl.org/downloads/latest/youtube-dl -O /usr/local/bin/youtube-dl && \
    chmod +x /usr/local/bin/youtube-dl ; \
    apk --no-cache add python
    
CMD tail -f /serviio/log/serviio.log & /serviio/bin/serviio.sh



