all: ttf

ttf:
	find . -type f -iname '*.pfb' | sort | while IFS= read -r path; do \
		fontforge -quiet -lang=ff -c 'Open($$1); Generate($$1:r + ".$@")' "$$path"; \
	done

clean:
	git clean -xfd

.PHONY: ttf
