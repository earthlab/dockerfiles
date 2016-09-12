FROM rocker/ropensci

RUN apt-get update && apt-get -y install nano gdal-bin libgdal-dev libproj-dev libhdf5-10 groff

RUN install2.r --error \
  -r "http://cran.rstudio.com" \
  -r "http://www.bioconductor.org/packages/release/bioc" \
  raster \
  ggplot2 \
  data.table \
  akima \
  rasterVis \
  rgdal \
  dplyr \
  plot3D \
  gridExtra \
  colorspace \
  && rm -rf /tmp/downloaded_packages/ /tmp/*.rds

RUN pip install awscli

RUN R -e "devtools::install_github('earthlab/smapr')"
