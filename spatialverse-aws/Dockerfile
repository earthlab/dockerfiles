FROM rocker/tidyverse:latest

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    gdal-bin \
    lbzip2 \
    libfftw3-dev \
    libgdal-dev \
    libgl1-mesa-dev \
    libglu1-mesa-dev \
    libhdf4-alt-dev \
    libhdf5-dev \
    liblwgeom-dev \
    libnetcdf-dev \
    libsqlite3-dev \
    libssh2-1-dev \
    libssl-dev \
    libudunits2-dev \
    python-pip \
    texlive-fonts-extra \
    texlive-latex-extra \
    tk-dev \
    unixodbc-dev

RUN install2.r --error \
    assertthat \
    RColorBrewer \
    RandomFields \
    classInt \
    deldir \
    doParallel \
    geoR \
    geosphere \
    ggthemes \
    gstat \
    httr \
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
  && R -e "source('https://bioconductor.org/biocLite.R'); biocLite('BiocInstaller')" \
  && R -e "BiocInstaller::biocLite('rhdf5')" \
  && R -e "devtools::install_github('sjmgarnier/viridis')"

RUN pip install wheel \ 
  && pip install awscli

EXPOSE 8787

CMD ["/init"]

