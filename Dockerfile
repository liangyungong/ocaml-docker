FROM ubuntu:jammy-20220531
RUN apt update \
    && apt upgrade -y \
    && apt install -y opam vim

RUN opam init -a --disable-sandboxing
RUN opam update
RUN opam switch create cs3110-2021fa ocaml-base-compiler.4.12.0

RUN eval $(opam env --switch=cs3110-2021fa) \
    && opam install -y utop odoc ounit2 qcheck bisect_ppx menhir ocaml-lsp-server ocamlformat ocamlformat-rpc
RUN eval $(opam env --switch=default)

ENTRYPOINT [ "opam", "exec", "--" ]
CMD [ "utop" ]
