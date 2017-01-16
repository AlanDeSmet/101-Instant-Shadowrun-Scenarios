
SRC=101-Instant-Shadowrun-Scenarios.tex

LATEXMK=latexmk -xelatex -silent
#LATEXMK=latexmk -lualatex -silent

.PHONY: $(SRC)

all: $(SRC)

clean:
	$(LATEXMK) -C

watch: 
	$(LATEXMK) -pvc $(SRC)

$(SRC):
	$(LATEXMK) $@

