FROM openjdk:alpine

LABEL base.image="openjdk:alpine"
LABEL dockerfile.version="1"
LABEL software="BBTools"
LABEL software.version="38.95"
LABEL description="A set of tools labeled as \"Bestus Bioinformaticus\""
LABEL website="https://jgi.doe.gov/data-and-tools/bbtools/bb-tools-user-guide/"
LABEL license="https://jgi.doe.gov/disclaimer/"
LABEL maintainer="Abigail Shockey"
LABEL maintainer.email="abigail.shockey@slh.wisc.edu"
LABEL maintainer2="Padraic Fanning"
LABEL maintainer2.email="faninnpm AT miamioh DOT edu"


RUN apk add bash
RUN wget --no-check-certificate https://sourceforge.net/projects/bbmap/files/BBMap_38.95.tar.gz && \
    tar -xzf BBMap_38.95.tar.gz && \
    rm BBMap_38.95.tar.gz
COPY ./spyne/  /spyne
ENV PATH="${PATH}:/bbmap"\
    LC_ALL=C
