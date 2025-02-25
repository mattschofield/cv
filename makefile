TEX = pandoc
src = template.tex content.yaml
FLAGS = --pdf-engine=xelatex

output.pdf : $(src)
	$(TEX) $(filter-out $<,$^ ) -o $@ --template=$< $(FLAGS) -f markdown

.PHONY: clean
clean :
	rm output.pdf