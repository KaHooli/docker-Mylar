FROM lsiobase/alpine.python:3.8
LABEL maintainer="Ka Hooli"

RUN \
 echo "**** install pip packages ****" && \
 pip install --no-cache-dir -U \
	comictagger \
	configparser \
	tzlocal && \
 echo "**** install app ****" && \
 git clone https://github.com/evilhero/mylar.git /app/mylar --branch development

VOLUME /config /comics /downloads
EXPOSE 8090
