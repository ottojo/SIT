LATEXMK=latexmk

all: main.pdf
	$(info ARTIFACTS:main.pdf)

.PHONY: main.pdf
main.pdf:
	$(LATEXMK) -pdf main.tex

.PHONY: clean
clean:
	latexmk -C main.tex