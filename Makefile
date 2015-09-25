# Create HTML from my Org Notes

SOURCES=$(wildcard *.org)
OBJECTS=$(patsubst %.org,%.html,$(SOURCES))

all: $(OBJECTS)

%.html: %.org
	emacs $< --batch -f org-html-export-to-html --kill
