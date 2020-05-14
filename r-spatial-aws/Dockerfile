FROM rocker/geospatial:latest
MAINTAINER "Max Joseph" maxwell.b.joseph@colorado.edu

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    python3-pip

RUN pip3 install awscli

RUN install2.r --error \
    assertthat \
    doParallel \
    ggthemes \
    httr \
    rasterVis \
    RCurl \
    snowfall \
    tidyverse \
    viridis

