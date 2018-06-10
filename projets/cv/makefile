SHELL := /bin/bash
PY=python
PANDOC=pandoc

BASEDIR=$(CURDIR)

SOURCEFILE=`ls _*.md`
SOURCENAME=`ls _*.md | cut -d'.' -f1 |  tail -c +2`

.DEFAULT_GOAL := all

help:
	@echo '                                                                       '
	@echo '   make pdf	                       generate a pdf 					  '
	@echo '   make index	                   generate a md index 				  '
	@echo '                                                                       '
	@echo "$(SOURCEFILE)"
	@echo "$(SOURCENAME)"

pdf:
	@echo 'making a pdf'
	pandoc "$(BASEDIR)"/$(SOURCEFILE) -o "$(BASEDIR)/$(SOURCENAME).pdf" 

index: 
	@echo 'making a index.md'
	./make_index.sh $(SOURCEFILE)

all: pdf index
	