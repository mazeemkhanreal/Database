# USING OFFICAL AND LATEST POSTGRES IMAGE
FROM postgres:latest

# SETTING UP THE BASIC CREDENTIALS
ENV POSTGRES_DB=postgres
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=admin 

# INSTALLING BASIC APT UPDATES AND CRON
RUN apt-get update && \
    apt-get install -y cron && \
    rm -rf /var/lib/apt/lists/*

# COPY INITIALIZATION SCRIPTS TO THE docker-entrypoint-initdb.d FOR RUNNING CUSTOM SCRIPTS
COPY init.sql /docker-entrypoint-initdb.d/

# COPY AND MAKING CRONJOB EXECUTABLE
COPY cronjob.sh /usr/local/bin/cronjob.sh
RUN chmod +x /usr/local/bin/cronjob.sh

# COPY YOUR CRONJOB FILE HERE
COPY cronjobs.txt /etc/cronjobs.txt

# APPLYING CRON TO THE IMAGE
RUN crontab /etc/cronjobs.txt