# Makefile

## Configuration

BUILD_TIME := $(shell date +%FT%T%z)
PROJECT := $(shell basename $(PWD))

## Install dependencies

.PHONY: install
install:
	python3 -m pip install --upgrade -U pip && python3 -m pip install -U -r requirements.txt
install-windows:
	pip install --upgrade -U pip && pip install -U -r requirements.txt

## Scripts
.PHONY: clean
clean:
	python3 -m pip install uninstall -y -r requirements.txt

.PHONY: dev
run:
	python3 -m flask run -h localhost -p 3000 --debug

run-windows:
	flask run -h localhost -p 3000 --debug

.PHONY: prod
start:
	python3 -m flask run -h localhost -p 3000

start-windows:
	flask run -h localhost -p 3000 --debug
