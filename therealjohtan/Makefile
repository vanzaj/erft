SRC = essays
DST = top-essays

help:
	@echo 'Usage: make [epub|mobi]'

epub:
	pandoc -f markdown+yaml_metadata_block -o out/$(DST).epub title.txt $(SRC)/*.md

pdf:
	pandoc -f markdown+yaml_metadata_block -o out/$(DST).pdf title.txt $(SRC)/*.md

clean:
	/bin/rm -f out/

.PHONY: help
