FROM alpine:latest

ARG INTERNAL_CA_CERT

RUN set -x \
  \
  && apk add --no-cache \
    ca-certificates \
    s3fs-fuse \
  \
  && mkdir -p /usr/local/share/ca-certificates \
  && echo -e "$INTERNAL_CA_CERT" > /usr/local/share/ca-certificates/ca-cert.pem \
  && update-ca-certificates

ENTRYPOINT ["s3fs", "-f"]