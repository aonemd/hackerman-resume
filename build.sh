#!/bin/sh

SOURCE=resume.md
TARGET=resume
CSS=resume.css
OPEN_COMMAND=xdg-open # replace with `open` for macos

case "$1" in
  build)
    pandoc --pdf-engine=wkhtmltopdf -t html5 --css "$CSS" -o "$TARGET".pdf "$SOURCE"
    ;;
  build-docker)
    docker build -t resume .
    container_id=$(docker run -d resume:latest)
    docker cp $container_id:/usr/src/resume.pdf ./resume.pdf
    ;;
  build-html)
    pandoc --standalone --css "$CSS" --from markdown --to html -o "$TARGET".html "$SOURCE"
    ;;
  open)
    "$OPEN_COMMAND" "$TARGET".pdf &
    ;;
  *)
    echo "Usage: $0 {build|build-docker|build-html|open}"
    exit 2
esac

exit 0
