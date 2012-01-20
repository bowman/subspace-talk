default: all

all: vroom spork

vroom: vroom/slides.vroom
	cd vroom; \
	vroom -compile \
	vroom -html

spork: spork/Spork.slides
	cd vroom; \
	vroom -compile \
	vroom -html

.PHONY: vroom
