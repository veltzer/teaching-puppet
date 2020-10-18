
SOURCES=user.rb

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

$(OUT_SVG): %.svg: %.rb
	pygmentize -f svg -o $@ $<
$(OUT_JPG): %.jpg: %.rb
	pygmentize -f jpg -o $@ $<
$(OUT_HTM): %.htm: %.rb
	pygmentize -f html -o $@ $<
$(OUT_PNG): %.png: %.rb
	pygmentize -f png -o $@ $<
$(OUT_RTF): %.rtf: %.rb
	pygmentize -f rtf -o $@ $<

.PHONY: debug
debug:
	$(info SOURCES is $(SOURCES))
	$(info OUT_SVG is $(OUT_SVG))
	$(info OUT_JPG is $(OUT_JPG))
	$(info OUT_HTM is $(OUT_HTM))
	$(info OUT_PNG is $(OUT_PNG))
	$(info OUT_RTF is $(OUT_RTF))
	$(info ALL is $(ALL))
