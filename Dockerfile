FROM ubuntu:jammy-20220531
RUN apt update \
    && apt upgrade -y \
    && apt install opam
# RUN opam init \
    # && eval `opam env`
