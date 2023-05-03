# Makefile

## Configuration

BUILD_TIME := $(shell date +%FT%T%z)
PROJECT := $(shell basename $(PWD))

## Install dependencies

.PHONY: install
install:
	python3 -m pip install --upgrade pip && python3 -m pip install -r requirements.txt

## Scripts
.PHONY: clean
clean:
	python3 -m pip install uninstall -y -r requirements.txt

.PHONY: dev
dev:
	python3 -m flask run -h localhost -p 3000 --debug

.PHONY: prod
start:
	python3 -m flask run -h localhost -p 3000
