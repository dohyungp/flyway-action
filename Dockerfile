FROM flyway/flyway:latest-alpine

RUN apk add --no-cache icu-libs krb5-libs libgcc libintl libssl3 libstdc++ zlib \
    && apk --no-cache add --update python3 py3-pip

COPY entrypoint.sh /entrypoint.sh
COPY md_converter.py /md_converter.py

ENTRYPOINT ["/entrypoint.sh"]