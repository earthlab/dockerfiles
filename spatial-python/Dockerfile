FROM jupyter/scipy-notebook

MAINTAINER Max Joseph <maxwell.b.joseph@colorado.edu>

USER root

RUN apt-get update && \
    apt-get install -y libfreetype6-dev pkg-config libx11-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
    
USER $NB_USER

RUN conda install ipyparallel && \
    ipcluster nbextension enable --user

RUN conda install --yes \
    'ipyparallel' \
    'pandas' \ 
    'basemap' \
    'h5py' \
    'netcdf4' \
    'pysal'

RUN conda install --yes -c conda-forge \
    'cartopy' \
    'gdal=2.1.3' \
    'geopandas' \
    'awscli' 

RUN pip install git+https://github.com/developmentseed/landsat-util.git


