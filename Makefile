PACKAGE := $(shell which pnpm)

.PHONY: all install run

help: # Show help for each of the Makefile recipes.
	@grep -E '^[a-zA-Z0-9 -]+:.*#'  Makefile | sort | while read -r l; do printf "\033[1;32m$$(echo $$l | cut -f 1 -d':')\033[00m:$$(echo $$l | cut -f 2- -d'#')\n"; done

install: all # installs required dependencies for node projects
	cd react-app && $(PACKAGE) install

run: all # runs the react app
	cd react-app && $(PACKAGE) run start

all:
ifeq (, $(PACKAGE))
	$(warning "pnpm not present. Setting default executable to make")
	PACKAGE := $(shell which npm)
endif

