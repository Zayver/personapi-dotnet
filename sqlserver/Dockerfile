FROM mcr.microsoft.com/mssql/server:2019-latest

USER root

RUN mkdir -p /usr/config
WORKDIR /usr/config

COPY . /usr/config

RUN chmod +x /usr/config/entrypoint.sh
RUN chmod +x /usr/config/configure-db.sh

ENTRYPOINT ["./entrypoint.sh"]