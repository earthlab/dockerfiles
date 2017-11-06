FROM rocker/rstudio:latest

# much below is from the rocker/geospatial Dockerfile

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    gdal-bin \
    lbzip2 \
    libfftw3-dev \
    libgdal-dev \
    libgeos-dev \
    libgsl0-dev \
    libgl1-mesa-dev \
    libglu1-mesa-dev \
    libhdf4-alt-dev \
    libhdf5-dev \
    liblwgeom-dev \
    libproj-dev \
    libnetcdf-dev \
    libsqlite3-dev \
    libssh2-1-dev \
    libssl-dev \
    libudunits2-dev \
    python-pip \
    tk-dev \
    unixodbc-dev

RUN install2.r --error \
    assertthat \
    RColorBrewer \
    RandomFields \
    classInt \
    deldir \
    doParallel \
    ggthemes \
    gstat \
    httr \
    lidR \
    mapdata \
    maptools \
    mapview \
    MODIS \
    ncdf4 \
    proj4 \
    raster \
    rasterVis \
    RCurl \
    rgdal \
    rgeos \
    rlas \
    sf \
    sp \
    spacetime \
    spatstat \
    spdep \
    snowfall \
    tidyverse \
    viridis \
    geoR \
    geosphere \
    ## from bioconductor
  && R -e "source('https://bioconductor.org/biocLite.R'); biocLite('BiocInstaller')" \
  && R -e "BiocInstaller::biocLite('rhdf5')"

RUN pip install wheel \ 
  && pip install awscli

EXPOSE 8787

CMD ["/init"]

