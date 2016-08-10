FROM mysql:5.5

RUN apt-get update && apt-get install -y cron

ADD start.sh /
RUN chmod 755 /start.sh

ENV DB_HOST=db
ENV CRON_EXPR="* * * * *"
ENV BACKUP_DIR=/backup
ENV BACKUP_FILE=mysql

ENTRYPOINT
CMD /start.sh