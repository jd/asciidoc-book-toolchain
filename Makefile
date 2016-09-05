BOOKNAME=book
SOURCE=$(BOOKNAME).txt
TARGET=$(BOOKNAME).pdf $(BOOKNAME).printable.pdf $(BOOKNAME).epub $(BOOKNAME).mobi $(BOOKNAME).html

release: $(BOOKNAME).html $(BOOKNAME).pdf $(BOOKNAME).epub $(BOOKNAME).mobi Makefile
	gs -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -sOutputFile=$(BOOKNAME).compressed.pdf $(BOOKNAME).pdf
	mv $(BOOKNAME).compressed.pdf $(BOOKNAME).pdf

# To debug a2x, add -v and -k to keep files
%.pdf: %.txt Makefile style-dblatex.xsl style-dblatex.sty
	a2x -fpdf -dbook --dblatex-opts="-d -p style-dblatex.xsl -b xetex --texstyle=style-dblatex.sty" $<

$(BOOKNAME).printable.pdf: $(BOOKNAME).txt Makefile style-dblatex.printable.xsl style-dblatex.printable.sty chapter-background.png
	test ! -f $(BOOKNAME).pdf || mv -f $(BOOKNAME).pdf $(BOOKNAME).moved.pdf
	a2x -fpdf -dbook --dblatex-opts="-d -p style-dblatex.printable.xsl -b xetex --texstyle=style-dblatex.printable.sty" $(BOOKNAME).txt
	mv -f $(BOOKNAME).pdf $@
	test ! -f $(BOOKNAME).moved.pdf || mv -f $(BOOKNAME).moved.pdf $(BOOKNAME).pdf

%.epub: %.txt Makefile $(BOOKNAME)-docinfo.xml
	a2x -a docinfo -fepub -dbook $<

%.mobi: %.epub Makefile
	ebook-convert $< $@

$(BOOKNAME).html: $(BOOKNAME).txt Makefile
	mkdir -p $(BOOKNAME).html
	a2x --icons -d book -D $(BOOKNAME).html -f xhtml $(BOOKNAME).txt

clean:
	rm -rf $(TARGET) $(BOOKNAME)__*.png

.PHONY: clean release
