FROM jodogne/orthanc-plugins:latest

COPY orthanc.json /etc/orthanc/

EXPOSE 8042
