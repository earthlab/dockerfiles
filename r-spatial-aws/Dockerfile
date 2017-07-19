FROM rocker/rstudio:latest

# much below is from the rocker/geospatial Dockerfile

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
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
    libssl-dev \
    libudunits2-dev \
    python-pip \
    tk-dev \
    unixodbc-dev \
  && pip install awscli \
  && install2.r --error \
    RColorBrewer \
    RandomFields \
    classInt \
    deldir \
    gstat \
    lidR \
    mapdata \
    maptools \
    mapview \
    ncdf4 \
    proj4 \
    raster \
    rgdal \
    rgeos \
    rlas \
    sf \
    sp \
    spacetime \
    spatstat \
    spdep \
    tidyverse \
    geoR \
    geosphere \
    ## from bioconductor
    && R -e "source('https://bioconductor.org/biocLite.R'); biocLite('BiocInstaller')" \
    && R -e "BiocInstaller::biocLite('rhdf5')"

RUN install2.r --error doParallel

EXPOSE 8787

CMD ["/init"]

