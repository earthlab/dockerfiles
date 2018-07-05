FROM ubuntu

MAINTAINER Max Joseph <maxwell.b.joseph@gmail.com>

RUN apt-get update \ 
    && apt-get install -y --no-install-recommends \
	default-jdk \
	python-pip \
	unzip

RUN adduser --disabled-password --gecos "" ubuntu

WORKDIR /home/ubuntu

USER ubuntu

# need a local copy of MRT_download_Linux64.zip from
# https://lpdaac.usgs.gov/tools/modis_reprojection_tool
COPY MRT_download_Linux64.zip MRT_download_Linux64.zip

RUN unzip MRT_download_Linux64.zip

RUN ./mrt_install

RUN rm -rf *.zip mrt_install

ENV PATH="$PATH:/home/ubuntu/MRT/bin"
ENV MRT_DATA_DIR="/home/ubuntu/MRT/data"
ENV MRT_HOME="/home/ubuntu/MRT"

RUN pip install wheel setuptools

RUN pip install awscli

