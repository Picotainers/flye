# syntax=docker/dockerfile:1

FROM python:3.12-slim-bookworm

ARG FLYE_VERSION=2.9.6

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        build-essential \
        ca-certificates \
        git \
        zlib1g-dev \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /tmp
RUN git clone --depth 1 --branch ${FLYE_VERSION} https://github.com/mikolmogorov/Flye.git /tmp/Flye \
    && pip install --no-cache-dir /tmp/Flye \
    && rm -rf /tmp/Flye

WORKDIR /data
ENTRYPOINT ["flye"]
CMD ["--help"]
