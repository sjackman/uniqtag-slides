all: UniqTag.html

clean:
	rm -f UniqTag.html

install-deps:
	brew install pandoc

.PHONY: all clean
.DELETE_ON_ERROR:
.SECONDARY:

# Rules

%.html: %.md %.revealjs
	pandoc -st revealjs --template $* -V theme:sky -o $@ $<
