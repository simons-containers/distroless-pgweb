# Distroless pgweb container

Bare-bones distroless pgweb container image.

## Running

Mount data directory at `/var/lib/pgweb`.

Example:

```bash
docker run -it --rm -v ./data:/var/lib/pgweb \
  ghcr.io/simons-containers/distroless-pgweb:latest
```

## Building

| Arg | Description |
|---|---|
| `PGWEB_VERSION` | Version of pgweb to use

Build container using build-args from versions.yaml:

```bash
docker build -t \
  distroless-pgweb:$(yq -r .pgweb versions.yaml) \
  $(yq -r 'to_entries | .[] | "--build-arg \(.key | ascii_upcase)_VERSION=\(.value)"' versions.yaml) -f Containerfile .
```

## License

Repository contents (e.g., `Containerfile`, build scripts, and configuration) are licensed under the **MIT License**.

Software included in built container images (such as **pgweb**) are provided under their respective upstream licenses and are not covered by the MIT license for this repository.

## Acknowledgements

This project depends on a number of upstream components and data sources:

- **pgweb** - Cross-platform client for PostgreSQL databases.  
  https://sosedoff.github.io/pgweb