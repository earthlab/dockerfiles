FROM rocker/geospatial:latest
MAINTAINER "Max Joseph" maxwell.b.joseph@colorado.edu

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    python-pip

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

RUN pip install wheel \ 
  && pip install awscli

