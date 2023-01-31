# or use pandoc/latex:latest ? not necessary for vanilla usage at least
# you just need to inherit from us so that you have pandoc available
FROM pandoc/core:latest-ubuntu

# Install the package(s) you want
# RUN apk --no-cache add wkhtmltopdf
RUN apt update && apt install -y software-properties-common && add-apt-repository multiverse && apt update && echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | debconf-set-selections && apt install  --reinstall  -y xvfb libfontconfig wkhtmltopdf fontconfig ttf-mscorefonts-installer && fc-cache -f -v

ENV SRC /usr/src
WORKDIR $SRC
Add . $SRC

# Demo of it working and also have pandoc.  You would *NOT* normally
# have these things in your Dockerfile, this is just a demo for
# convenience.
RUN pandoc --version
RUN ./install build
