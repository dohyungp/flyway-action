FROM flyway/flyway:latest-alpine

WORKDIR /flyway
COPY entrypoint.sh md_converter.py /flyway/

ENTRYPOINT ["/flyway/entrypoint.sh"]