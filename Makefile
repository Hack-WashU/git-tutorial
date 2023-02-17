PACKAGE := $(shell which pnpm)

.PHONY: all install run

help: # Show help for each of the Makefile recipes.
	@echo "Here is a list of valid make targets for this project:"
	@grep -E '^[a-zA-Z0-9 -]+:.*#'  Makefile | sort | while read -r l; do printf "\033[1;32m$$(echo $$l | cut -f 1 -d':')\033[00m:$$(echo $$l | cut -f 2- -d'#')\n"; done

all:
ifeq (, $(PACKAGE))
	$(warning "pnpm not present. Setting default executable to make")
	$(eval PACKAGE=$(shell which npm))
endif

install: all # installs required dependencies for node projects
	$(PACKAGE) install

run: all # runs the react app
	$(PACKAGE) run start

