FROM flyway:flayway:10.14-alpine

COPY entrypoint.sh entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]