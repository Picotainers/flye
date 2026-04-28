# flye
Container image for Flye built from upstream source.

## Quick Usage

```bash
# Pull the image
docker pull docker.io/picotainers/flye:latest

# Show Flye help
docker run --rm docker.io/picotainers/flye:latest --help
```

## Usage

```bash
# Example assembly run
docker run --rm -v "$(pwd):/data" docker.io/picotainers/flye:latest \
  --nano-raw /data/reads.fastq \
  --out-dir /data/flye-out \
  --genome-size 5m
```

## Building

```bash
docker build -t docker.io/picotainers/flye:latest .
```