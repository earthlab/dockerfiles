FROM rocker/tidyverse:latest

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    fort77 \
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
    libv8-3.14-dev \
    python-pip \
    texlive-fonts-extra \
    texlive-latex-extra \
    tk-dev \
    unixodbc-dev

RUN install2.r --error \
    assertthat \
    RColorBrewer \
    RandomFields \
    caret \
    caretEnsemble \
    classInt \
    deldir \
    doParallel \
    dplyr \
    geoR \
    geosphere \
    ggthemes \
    gstat \
    httr \
    lutz \
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

# install wgrib2
RUN wget ftp://ftp.cpc.ncep.noaa.gov/wd51we/wgrib2/wgrib2.tgz.v2.0.4 -O /tmp/wgrib2.tgz && \
	mkdir -p /usr/local/grib2/ && \
	cd /tmp/ && \
        tar -xf /tmp/wgrib2.tgz && \
        rm -r /tmp/wgrib2.tgz && \
        mv /tmp/grib2/ /usr/local/grib2/ &&\
        cd /usr/local/grib2/grib2 && \
        sed -i '/USE_IPOLATES=0/c\USE_IPOLATES=1' makefile && \
        cat makefile && \
        export FC=gfortran && \
        make && \
	ln -s /usr/local/grib2/grib2/wgrib2/wgrib2 /usr/local/bin/wgrib2

RUN mkdir /usr/local/wgrib

WORKDIR /usr/local/wgrib

RUN wget ftp://ftp.cpc.ncep.noaa.gov/wd51we/wgrib/wgrib.tar && \
	tar xvf wgrib.tar && \
	make && \
	ln -s /usr/local/wgrib/wgrib /usr/local/bin

RUN install2.r --error rNOMADS

EXPOSE 8787

CMD ["/init"]

