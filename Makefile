all: build up

build:
	docker build -t ubuntu-jammy-ocaml .
up:
	docker run -v ${EXERCISM_DIR}:/exercism --rm -ti ubuntu-jammy-ocaml
