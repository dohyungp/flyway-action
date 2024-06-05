FROM flyway/flyway:latest-alpine

COPY entrypoint.sh /entrypoint.sh

WORKDIR /action/workspace

COPY md_converter.py /action/workspace/md_converter.py

ENTRYPOINT ["/entrypoint.sh"]