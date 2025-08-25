FROM alpine:latest

ARG TRUSTED_CA

RUN set -x \
  \
  && apk add --no-cache \
    ca-certificates \
    s3fs-fuse \
  \
  && mkdir -p /usr/local/share/ca-certificates \
  && echo -e "$TRUSTED_CA" > /usr/local/share/ca-certificates/ca-cert.pem \
  && update-ca-certificates

ENTRYPOINT ["s3fs", "-f"]