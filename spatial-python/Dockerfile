FROM jupyter/scipy-notebook

MAINTAINER Max Joseph <maxwell.b.joseph@colorado.edu>

USER root

RUN apt-get update && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
    
USER $NB_USER

RUN conda install ipyparallel && \
    ipcluster nbextension enable --user

RUN conda install --quiet --yes \
    'ipyparallel' \
    'pandas' \ 
    'basemap' \
    'h5py' \
    'netcdf4' \
    'pysal'

RUN conda install -c conda-forge \
    'gdal=2.1.3' \
    'geopandas' \
    'awscli' 

