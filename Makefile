.PHONY: all clean cleanall cleanext

all:
	latexmk -pdf main

clean: cleanext
	latexmk -c

cleanall: cleanext
	latexmk -C

cleanext:
	rm -f extern/*
	# Due to how latexmk works, even when certain extensions are listed for
	# removal, not all actually are (for glstex it's the ones that don't fit the
	# tex file being built, for bbl I don't know why).
	rm -f *.glstex
	rm -f *.bbl
