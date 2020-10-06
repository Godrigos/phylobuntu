FROM ubuntu:20.04

ENV TZ=America/Sao_Paulo

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y \
    mrbayes \
    mrbayes-mpi \
    iqtree \
    t-coffee \
    python3-pip && \
    apt-get clean && \
    useradd -m student

WORKDIR /home/student

COPY --chown=student . /home/student/

VOLUME /home/student

ENV PATH="/home/student/.local/bin:${PATH}"

USER student

LABEL description="Ubuntu 20.04 bash for phylogenetics classes"
LABEL maintainer="Rodrigo Aluizio"
