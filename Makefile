.PHONY: all clean

all: pdf html docx

pdf: TEMPLATE.md
	pandoc -o experiment-plan.pdf $<

docx: TEMPLATE.md
	pandoc -o experiment-plan.docx $<

html: TEMPLATE.md
	pandoc -o experiment-plan.html $<

clean:
	$(RM) -f experiment-plan.{pdf,docx,html}
