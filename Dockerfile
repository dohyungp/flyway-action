FROM flyway/flyway:latest-alpine

WORKDIR /flyway
COPY entrypoint.sh md_converter /flyway/

ENTRYPOINT ["/flyway/entrypoint.sh"]