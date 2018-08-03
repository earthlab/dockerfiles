FROM rocker/geospatial

MAINTAINER Max Joseph maxwell.b.joseph@colorado.edu

RUN install2.r --error \
  -r "http://cran.rstudio.com" \
  -r "http://www.bioconductor.org/packages/release/bioc" \
  lazyeval \
  ggplot2 \
  data.table \
  akima \
  rasterVis \
  dplyr \
  plot3D \
  gridExtra \
  colorspace \
  && rm -rf /tmp/downloaded_packages/ /tmp/*.rds

RUN R -e "devtools::install_github('ropensci/smapr')"

