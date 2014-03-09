all:
	hfst-lexc nouns.lexc -o nouns.lexc.hfst
	hfst-twolc nouns.twol -o nouns.twol.hfst
	hfst-compose-intersect -1 nouns.lexc.hfst -2 nouns.twol.hfst -o nouns.autogen.hfst
	hfst-invert nouns.autogen.hfst -o nouns.automorf.hfst
	hfst-fst2txt nouns.automorf.hfst -o nouns.automorf.att
	lt-comp lr nouns.automorf.att nouns.automorf.bin
