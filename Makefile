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
	bootstrap-backend start-backend-detached frontend

# Runs the 'bootstrap-backend' and 'start-backend' commands for a 1-line install and start
backend:
	bootstrap-backend start-backend

# Bootstrap and build the Plone backend using buildout.
bootstrap-backend:
	@python3 -m venv backend
	@backend/bin/pip install --upgrade pip
	@backend/bin/pip install -r backend/requirements.txt
	build-backend create-site

# Run buildout to update the backend
build-backend:
	@backend/bin/buildout

# Start the backend in foreground mode
start-backend:
	@backend/bin/instance fg

# Start the backend as a background process
start-backend-detached:
	@backend/bin/instance

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
