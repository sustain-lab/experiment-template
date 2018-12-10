.PHONY: all clean

all: pdf html docx

pdf: TEMPLATE.md
	pandoc -o TEMPLATE.pdf $<

docx: TEMPLATE.md
	pandoc -o TEMPLATE.docx $<

html: TEMPLATE.md
	pandoc -o TEMPLATE.html $<

clean:
	$(RM) -f TEMPLATE.{pdf,docx,html}
