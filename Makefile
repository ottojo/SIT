LATEXMK=latexmk

all: main.pdf
	$(info ARTIFACTS:main.pdf)

.PHONY: main.pdf
main.pdf: tikz-uml.sty
	$(LATEXMK) -pdf main.tex

.PHONY: clean
clean:
	latexmk -C main.tex

mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
mkfile_dir := $(dir $(mkfile_path))

tikz-uml.sty:
	wget https://perso.ensta-paris.fr/~kielbasi/tikzuml/var/files/src/tikzuml-v1.0-2016-03-29.tbz
	tar -xf tikzuml-v1.0-2016-03-29.tbz
	cp tikzuml-v1.0-2016-03-29/tikz-uml.sty $(mkfile_dir)/
	rm -r tikzuml-v1.0-2016-03-29
	rm tikzuml-v1.0-2016-03-29.tbz