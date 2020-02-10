  
PACKAGE_NAME=fonts-computer-modern

.PHONY: all
.PHONY: doc

all:
	:

doc: doc-fonts-computer-modern.pdf

doc-fonts-computer-modern.pdf: doc-$(PACKAGE_NAME).saty satysfi-$(PACKAGE_NAME).opam fonts.satysfi-hash Satyristes
	opam pin add satysfi-$(PACKAGE_NAME).opam "file://$(PWD)" -y
	satyrographos opam build -name $(PACKAGE_NAME)-doc