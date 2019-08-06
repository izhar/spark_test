FROM openjdk:8-alpine
RUN apk --update add wget tar bash
# Download spark from archive
RUN wget http://apache.mivzakim.net/spark/spark-2.4.3/spark-2.4.3-bin-hadoop2.7.tgz
# Extract, install and clean up
RUN tar -xzf spark-2.4.3-bin-hadoop2.7.tgz && \
    mv spark-2.4.3-bin-hadoop2.7 /spark && \
    rm spark-2.4.3-bin-hadoop2.7.tgz
COPY ./dockerfile_scripts/start-master.sh /start-master.sh
COPY ./dockerfile_scripts/start-worker.sh /start-worker.sh
