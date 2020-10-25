
SOURCES=user.rb
OPTS=-O "fontface=Fira Code,fontsize=26,line_numbers=False"

OUT_SVG=$(addsuffix .svg, $(basename $(SOURCES)))
OUT_JPG=$(addsuffix .jpg, $(basename $(SOURCES)))
OUT_HTM=$(addsuffix .htm, $(basename $(SOURCES)))
OUT_PNG=$(addsuffix .png, $(basename $(SOURCES)))
OUT_RTF=$(addsuffix .rtf, $(basename $(SOURCES)))


ALL:=
ALL+=$(OUT_SVG)
ALL+=$(OUT_JPG)
ALL+=$(OUT_HTM)
ALL+=$(OUT_PNG)
ALL+=$(OUT_RTF)

.PHONY: all
all: $(ALL)

$(OUT_SVG): %.svg: %.rb Makefile
	pygmentize -f svg $(OPTS) -o $@ $<
$(OUT_JPG): %.jpg: %.rb Makefile
	pygmentize -f jpg $(OPTS) -o $@ $<
$(OUT_HTM): %.htm: %.rb Makefile
	pygmentize -f html $(OPTS) -o $@ $<
$(OUT_PNG): %.png: %.rb Makefile
	pygmentize -f png $(OPTS) -o $@ $<
$(OUT_RTF): %.rtf: %.rb Makefile
	pygmentize -f rtf $(OPTS) -o $@ $<

.PHONY: debug
debug:
	$(info SOURCES is $(SOURCES))
	$(info OUT_SVG is $(OUT_SVG))
	$(info OUT_JPG is $(OUT_JPG))
	$(info OUT_HTM is $(OUT_HTM))
	$(info OUT_PNG is $(OUT_PNG))
	$(info OUT_RTF is $(OUT_RTF))
	$(info ALL is $(ALL))
