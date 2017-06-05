.PHONY: setup test

all: test

setup:
	bundle install --path vendor/bundle

test: setup
	bundle exec rake validate

vm:
	vagrant up
