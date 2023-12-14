### Defensive settings for make:
#     https://tech.davis-hansson.com/p/make/
SHELL:=bash
.ONESHELL:
.SHELLFLAGS:=-xeu -o pipefail -O inherit_errexit -c
.SILENT:
.DELETE_ON_ERROR:
MAKEFLAGS+=--warn-undefined-variables
MAKEFLAGS+=--no-builtin-rules
# include .env
.PHONY: all
all: help

# Add the following 'help' target to your Makefile
# And add help text after each target name starting with '\#\#'
.PHONY: help
help: ## This help message
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST)| awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'


################################
#  USEFUL COMMANDS START HERE  #
################################

start: backend frontend

backend:
	docker run -d -e SITE=Plone -e CORS_ALLOW_ORIGIN='*' -e ADDONS="nswdesignsystem.plone6==0.4.3" -e PROFILES="nswdesignsystem.plone6:default" -p 8080:8080 -v $(shell pwd)/data:/app/var plone/plone-backend:6.0
backend-foreground:
	docker run -e SITE=Plone -e CORS_ALLOW_ORIGIN='*' -e ADDONS="nswdesignsystem.plone6==0.4.3" -e PROFILES="nswdesignsystem.plone6:default" -p 8080:8080 -v $(shell pwd)/data:/app/var plone/plone-backend:6.0

frontend: frontend-build frontend-dev
frontend-build:
	$(MAKE) -C "./frontend/" install
frontend-dev:
	@cd frontend && yarn start
frontend-start:
	@cd frontend && yarn build && yarn start:prod
