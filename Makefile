.DEFAULT_GOAL := stub
bindir ?= ./build/bin

clean: | uninstall

install: | stub
	@rsync -a src/ ${bindir}/

stub:
	@mkdir -p ${bindir}

test: | install
	@bats test/transfer

uninstall:
	@rm -rf ${bindir}

.PHONY: clean install stub test uninstall
