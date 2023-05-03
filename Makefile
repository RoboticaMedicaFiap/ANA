# Makefile

## Configuration

BUILD_TIME := $(shell date +%FT%T%z)
PROJECT := $(shell basename $(PWD))

## Install dependencies

.PHONY: install
install:
	python -m pip install --upgrade -U pip && python -m pip install -U -r requirements.txt

## Scripts
.PHONY: clean
clean:
	python -m pip install uninstall -y -r requirements.txt

.PHONY: dev
dev:
	python -m flask run -h localhost -p 3000 --debug

.PHONY: prod
start:
	python -m flask run -h localhost -p 3000
