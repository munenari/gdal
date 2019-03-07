FROM ubuntu:18.04

WORKDIR /data

RUN apt update && \
    apt upgrade -y && \
    apt install -y gdal-bin locales && \
    apt clean
RUN locale-gen en_US.utf8

ENV LC_ALL=en_US.utf8

CMD ["ls", "gdal*", "ogr*"]
