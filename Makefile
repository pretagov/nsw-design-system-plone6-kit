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

# 1-line install and start for the frontend and backend. Backend is left as a background process while the frontend is the foreground process.
start:
	backendd frontend

# Runs the 'bootstrap-backend' and 'start-backend' commands for a 1-line install and start
backend:
	docker run -d -e SITE=Plone -e CORS_ALLOW_ORIGIN='*' -e ADDONS="nswdesignsystem.plone6==0.4.3" -e PROFILES="nswdesignsystem.plone6:default" -p 8080:8080 -v $(shell pwd)/data:/app/var plone/plone-backend:6.0
backend-foreground:
	docker run -e SITE=Plone -e CORS_ALLOW_ORIGIN='*' -e ADDONS="nswdesignsystem.plone6==0.4.3" -e PROFILES="nswdesignsystem.plone6:default" -p 8080:8080 -v $(shell pwd)/data:/app/var plone/plone-backend:6.0

# Runs the 'build-backend' and 'start-backend' commands for a 1-line install and start
frontend:
	bootstrap-frontend start-frontend

# Install the frontend dependencies
bootstrap-frontend:
	@cd frontend && yarn install

# Start the frontend in production mode
start-frontend:
	@cd frontend && yarn build && yarn start:prod

# Start the frontend in development mode (slower but will auto-reload)
start-frontend-dev:
	@cd frontend && yarn start
