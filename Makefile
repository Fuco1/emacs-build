.PHONY: all setup test vm

all: test

setup:
	bundle install --path vendor/bundle
	bundle exec librarian-puppet install

test: setup
	bundle exec rake validate

vm:
	vagrant up
