ifndef DYN_DOCS
 DYN_DOCS=$(HOME)/Classes/StatComputing/XDynDocs/inst
endif

-include $(DYN_DOCS)/Make/Makefile

# Need to make this the installed location.
ifndef 
 MAKE_SESSION_SCRIPT=/Users/duncan/Rpackages/FormatSession/make/makeSession.R
endif

%.Rdb: %
	$(R_HOME)/bin/Rscript $(MAKE_SESSION_SCRIPT) $< $@

%.Rdb: %.Rsession
	$(R_HOME)/bin/Rscript $(MAKE_SESSION_SCRIPT) $< $@

