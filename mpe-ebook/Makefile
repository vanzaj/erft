SRC = mpe.md
NAME = mpe

help:
	@echo 'Usage: make [epub|mobi]'

epub: $(SRC)
	pandoc -S -f markdown+yaml_metadata_block -o $(NAME).$@ $^

mobi: $(NAME).epub
	kindlegen $^

clean:
	rm -f $(NAME).{epub,mobi}

.PHONY: help
