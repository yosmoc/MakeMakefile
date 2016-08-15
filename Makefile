URL = http://www.oreilly.co.jp/library/4873112699/
SRCS = mae.pdf maegaki.pdf contents.pdf ch01.pdf ch02.pdf ch03.pdf ch04.pdf ch05.pdf ch06.pdf ch07.pdf ch08.pdf ch09.pdf ch10.pdf ch11.pdf ch12.pdf appA.pdf appB.pdf appC.pdf index.pdf ato.pdf
OUT = GNU_Make_3rd_edition.pdf
MERGE_TOOL = /System/Library/Automator/Combine\ PDF\ Pages.action/Contents/Resources/join.py

all: download concat

download:
	for file in $(SRCS) ; do \
		wget -N $(URL)$$file ; \
	done

concat:
	$(MERGE_TOOL) --output $(OUT) $(SRCS)

clean:
	rm -rf *.pdf
