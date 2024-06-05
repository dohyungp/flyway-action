FROM flyway/flyway:latest-alpine

COPY entrypoint.sh /entrypoint.sh
COPY md_converter.py md_converter.py

ENTRYPOINT ["/entrypoint.sh"]