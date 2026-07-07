FROM cgr.dev/chainguard/curl:latest-dev AS fetch

ARG PGWEB_VERSION
ARG PGWEB_RELEASE

WORKDIR /extract/pgweb
RUN curl --silent --show-error --location --output pgweb.zip \
  "${PGWEB_RELEASE}" \
  && unzip pgweb.zip \
  && chmod a+x /extract/pgweb/pgweb_linux_amd64

FROM scratch

ARG PGWEB_VERSION

COPY --from=fetch /extract/pgweb/pgweb_linux_amd64 /usr/bin/pgweb

ENTRYPOINT ["/usr/bin/pgweb"]
CMD ["--bind=0.0.0.0"]

LABEL org.opencontainers.image.title="distroless pgweb"
LABEL org.opencontainers.image.description="distroless pgweb"
LABEL org.opencontainers.image.version="${PGWEB_VERSION}"
LABEL org.opencontainers.image.source="https://github.com/simons-containers/distroless-pgweb"
