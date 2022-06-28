all: build up

build:
	docker build -t ubuntu-jammy-ocaml .
up:
	docker run --rm -ti ubuntu-jammy-ocaml
