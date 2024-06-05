FROM flyway/flyway:latest-alpine

COPY entrypoint.sh /entrypoint.sh
COPY md_converter /flyway/md_converter

ENTRYPOINT ["/entrypoint.sh"]