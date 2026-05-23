FROM osimis/orthanc:24.2.0

RUN apt-get update && \
    apt-get install -y wget unzip && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir -p /usr/share/orthanc/plugins

RUN wget -O /tmp/ohif.zip https://github.com/orthanc-server/orthanc-ohif/releases/latest/download/orthanc-ohif.zip && \
    unzip /tmp/ohif.zip -d /usr/share/orthanc/plugins/ && \
    rm /tmp/ohif.zip

COPY orthanc.json /etc/orthanc/

EXPOSE 8042
