FROM flyway/flyway:latest-alpine

COPY entrypoint.sh /entrypoint.sh

WORKDIR /action/workspace

COPY markdown_converter.py /action/workspace/markdown_converter.py

ENTRYPOINT ["/entrypoint.sh"]