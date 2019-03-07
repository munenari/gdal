FROM ubuntu:18.04

WORKDIR /data

RUN apt update && \
    apt upgrade -y && \
    apt install gdal-bin -y && \
    apt clean

CMD ["ls", "gdal*", "ogr*"]
