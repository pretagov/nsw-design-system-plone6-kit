PS_VERSION=$(shell cat version.txt)
SRC_PACKAGES=$(shell ls src/)
init:
	@wget https://github.com/plone/volto/raw/master/api/requirements.txt -O requirements.txt
	@python3 -m venv .
	@bin/pip install --upgrade pip
	@bin/pip install --upgrade wheel
	@bin/pip install -r requirements.txt

buildout:
	@bin/buildout

clean-dist:
	@rm -f dist/*

dist: clean-dist
dist: $(SRC_PACKAGES)
$(SRC_PACKAGES):
	@echo "Building $@"
	@rm -f src/$@/dist/*
	@cd src/$@; python3 setup.py sdist
	@cp src/$@/dist/* dist/


clean-build: clean dist build

DOCKER_IMAGE=plone/plone-backend:6.0.0b1

