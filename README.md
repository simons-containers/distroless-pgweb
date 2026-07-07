[![Current Version](https://raw.githubusercontent.com/simons-containers/distroless-pgweb/badges/.badges/main/release.svg)](https://github.com/simons-containers/distroless-pgweb/pkgs/container/distroless-pgweb) [![Tags](https://raw.githubusercontent.com/simons-containers/distroless-pgweb/badges/.badges/main/tags.svg)](https://github.com/simons-containers/distroless-pgweb/pkgs/container/distroless-pgweb) <br> ![Current Size](https://raw.githubusercontent.com/simons-containers/distroless-pgweb/badges/.badges/main/size.svg) ![Wasted Size](https://raw.githubusercontent.com/simons-containers/distroless-pgweb/badges/.badges/main/wasted.svg) ![Efficiency](https://raw.githubusercontent.com/simons-containers/distroless-pgweb/badges/.badges/main/efficiency.svg) <br> ![Critical](https://raw.githubusercontent.com/simons-containers/distroless-pgweb/badges/.badges/main/critical.svg) ![High](https://raw.githubusercontent.com/simons-containers/distroless-pgweb/badges/.badges/main/high.svg) ![Medium](https://raw.githubusercontent.com/simons-containers/distroless-pgweb/badges/.badges/main/medium.svg) ![Low](https://raw.githubusercontent.com/simons-containers/distroless-pgweb/badges/.badges/main/low.svg) <br> [![Publish Workflow](https://img.shields.io/github/actions/workflow/status/simons-containers/distroless-pgweb/deploy.yaml?label=Publish%20Workflow&logo=github)](https://github.com/simons-containers/distroless-pgweb/actions/workflows/deploy.yaml) [![Update Workflow](https://img.shields.io/github/actions/workflow/status/simons-containers/distroless-pgweb/update-versions.yaml?label=Update%20Workflow&logo=github)](https://github.com/simons-containers/distroless-pgweb/actions/workflows/update-versions.yaml)

# Distroless pgweb container

Bare-bones distroless pgweb container image.

## Running

Mount data directory at `/var/lib/pgweb`.

Example:

```bash
docker run -it --rm -v ./data:/var/lib/pgweb \
  ghcr.io/simons-containers/distroless-pgweb:latest
```

## License

Repository contents (e.g., `Containerfile`, build scripts, and configuration) are licensed under the **MIT License**.

Software included in built container images (such as **pgweb**) are provided under their respective upstream licenses and are not covered by the MIT license for this repository.

## Acknowledgements

This project depends on a number of upstream components and data sources:

- **pgweb** - Cross-platform client for PostgreSQL databases.  
  https://sosedoff.github.io/pgweb
