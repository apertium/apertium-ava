all:
	hfst-lexc verbs.lexc -o verbs.lexc.hfst
	hfst-twolc verbs.twol -o verbs.twol.hfst
	hfst-compose-intersect -1 verbs.lexc.hfst -2 verbs.twol.hfst -o verbs.autogen.hfst
	hfst-invert verbs.autogen.hfst -o verbs.automorf.hfst
	hfst-fst2txt verbs.automorf.hfst -o verbs.automorf.att
	lt-comp lr verbs.automorf.att verbs.automorf.bin
