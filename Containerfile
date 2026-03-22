FROM archlinux:base-devel-20260308.0.497099 AS builder

ARG PGWEB_VERSION
ARG PGWEB_RELEASE=https://github.com/sosedoff/pgweb/releases/download/v${PGWEB_VERSION}/pgweb_linux_amd64.zip

RUN pacman -Syu --noconfirm unzip

WORKDIR /extract/pgweb
RUN curl --silent --show-error --location --output pgweb.zip \
  "${PGWEB_RELEASE}" \
  && unzip pgweb.zip \
  && chmod a+x /extract/pgweb/pgweb_linux_amd64

FROM scratch

ARG PGWEB_VERSION

COPY --from=builder /extract/pgweb/pgweb_linux_amd64 /usr/bin/pgweb

ENTRYPOINT ["/usr/bin/pgweb"]
CMD ["--bind=0.0.0.0"]

LABEL org.opencontainers.image.title="distroless pgweb"
LABEL org.opencontainers.image.description="distroless pgweb"
LABEL org.opencontainers.image.version="${PGWEB_VERSION}"
LABEL org.opencontainers.image.source="https://github.com/simons-containers/distroless-pgweb"