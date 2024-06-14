FROM ubuntu:24.04

ENV TZ=America/Sao_Paulo
ENV APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE=1

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y \
    mrbayes \
    iqtree \
    phyml \
    raxml \
    t-coffee \
    libcurl4-openssl-dev \
    libxml2-dev \
    libssl-dev \
    gnupg2 \
    python3-pip && \
    useradd -m student

RUN echo "deb https://cloud.r-project.org/bin/linux/ubuntu noble-cran40/" > /etc/apt/sources.list.d/cran.list && \
    apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9 && \
    apt-get update && \
    apt-get install -y --no-install-recommends \
    r-base-dev && \
    apt-get autoremove --purge && \
    apt-get clean

WORKDIR /home/student

ENV PATH="/home/student/.local/bin:${PATH}"

USER student

LABEL description="Ubuntu 24.04 bash for phylogenetics classes"
LABEL maintainer="Rodrigo Aluizio"
