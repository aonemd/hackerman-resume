FROM pandoc/core:latest-ubuntu

RUN apt update && \
      apt install -y software-properties-common && \
      add-apt-repository multiverse && \
      apt update && \
      echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | debconf-set-selections && \
      apt install  --reinstall  -y xvfb libfontconfig wkhtmltopdf fontconfig ttf-mscorefonts-installer && \
      fc-cache -f -v

ENV SRC /usr/src
WORKDIR $SRC
Add . $SRC

RUN pandoc --version
RUN ./install build
