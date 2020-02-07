CASK ?= cask
EMACS ?= emacs

help: ## Show help message.
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

test: unit ecukes ## Run unit and BDD tests

unit: ## Run unit tests
	${CASK} exec ert-runner

ecukes: ## Run BDD tests
	${CASK} exec ecukes

install: ## Install package locally
	${CASK} install

.PHONY:	all test unit ecukes install
