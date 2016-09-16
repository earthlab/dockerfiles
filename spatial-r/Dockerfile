FROM rocker/ropensci

MAINTAINER Max Joseph maxwell.b.joseph@colorado.edu

RUN apt-get update \
  && apt-get -y --no-install-recommends -t unstable install gdal-bin \
     groff \
     libgdal-dev \
     libgeos++-dev \
     libhdf5-10 \
     libproj-dev \
     libspatialite-dev \
     nano \
     netcdf-bin \
     pandoc pandoc-citeproc \
     xfonts-base \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* \
  && rm -rf /var/lib/apt/lists

RUN install2.r --error \
  -r "http://cran.rstudio.com" \
  -r "http://www.bioconductor.org/packages/release/bioc" \
  dplyr \
  geoR \
  ggmap \
  maps \
  maptools \
  raster \
  rasterVis \
  rgdal \
  rgeos \
  sp \
  spBayes \
  spdep \
  && rm -rf /tmp/downloaded_packages/ /tmp/*.rds
