FROM jupyter/scipy-notebook

MAINTAINER Max Joseph <maxwell.b.joseph@colorado.edu>

USER root

RUN apt-get update && \
    apt-get install -y libfreetype6-dev pkg-config libx11-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
    
USER $NB_USER

RUN conda install --yes -c conda-forge \
    'awscli' \
    'basemap' \
    'cartopy' \
    'gdal' \
    'geopandas' \
    'h5py' \
    'ipyparallel ' \
    'landsat_util' \
    'netcdf4' \
    'pandas' \
    'pysal'

RUN ipcluster nbextension enable --user


