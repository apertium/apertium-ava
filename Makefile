all:
	hfst-lexc apertium-ava.ava.lexc -o ava-lexc.hfst
	hfst-twolc apertium-ava.ava.twol -o ava-twol.hfst
	hfst-compose-intersect -1 ava-lexc.hfst -2 ava-twol.hfst -o ava-gen.hfst
	hfst-invert ava-gen.hfst -o ava-mor.hfst
	hfst-fst2fst -O -i ava-gen.hfst -o ava.autogen.hfst
	hfst-fst2fst -O -i ava-mor.hfst -o ava.automorf.hfst
	hfst-fst2txt ava.autogen.hfst -o ava.autogen.att
	hfst-fst2txt ava.automorf.hfst -o ava.automorf.att
	lt-comp lr ava.autogen.att ava.autogen.bin
	lt-comp lr ava.automorf.att ava.automorf.bin

clean:
	rm *.bin *.hfst *.att
