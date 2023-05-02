# Makefile

## Configuration

BUILD_TIME := $(shell date +%FT%T%z)
PROJECT := $(shell basename $(PWD))

## Install dependencies

.PHONY: install
install:
	pip3 install -U --upgrade pip && pip3 install -U -r requirements.txt

## Scripts
.PHONY: clean
clean:
	pip3 uninstall -y -U -r requirements.txt

.PHONY: dev
dev:
	python3 -m flask run -h localhost -p 3000 --debug

.PHONY: prod
start:
	python3 -m flask run -h localhost -p 3000
