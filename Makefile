SOURCE=resume.md
TARGET=resume
CSS=resume.css

all: pdf

pdf:
	pandoc -t html5 --css $(CSS) -o $(TARGET).pdf $(SOURCE)

html:
	 pandoc --standalone --css $(CSS) --from markdown --to html -o $(TARGET).html $(SOURCE)

run:
	xdg-open resume.pdf &
