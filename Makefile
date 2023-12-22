LANGUAGE ?= en

all: cards.txt

tsv.txt: words.txt
	./script $(LANGUAGE) < $< > $@ 2>&1

cards.txt: tsv.txt
	./filter < $< > $@

clean:
	rm -f tsv.txt cards.txt

.PHONY: all clean
