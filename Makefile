NAME := dtan4go
VERSION := v0.0.1
GIT_COMMIT := $(shell git describe --always)

LDFLAGS := -ldflags="-s -w -X main.Version=$(VERSION) -X main.GitCommit=$(GIT_COMMIT)"
SOURCES := $(shell find . -name "*.go" -type f)

.DEFAULT_GOAL := bin/$(NAME)

bin/$(NAME): $(SOURCES)
	go build $(LDFLAGS) -o bin/$(NAME)

.PHONY: clean
clean:
	rm -rf bin/*
