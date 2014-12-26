
all: help.txt

help.txt: help.txt.asm help.txt.cfg
	ca65 -o help.txt.o help.txt.asm
	ld65 -o help.txt -C help.txt.cfg help.txt.o
	sha1sum -c help.txt.sha1

clean:
	rm -f help.txt help.txt.o
