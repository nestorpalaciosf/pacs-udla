FROM orthancteam/orthanc:latest

COPY orthanc.json /etc/orthanc/

EXPOSE 8042
