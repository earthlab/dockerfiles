FROM jupyter/scipy-notebook

MAINTAINER Max Joseph <maxwell.b.joseph@colorado.edu>

USER root

RUN apt-get update && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
    
USER $NB_USER

RUN conda install --quiet --yes \
    'ipyparallel' \
    'pandas'

RUN conda install -c conda-forge \
    'gdal=2.1.3' \
    'awscli'

RUN conda install -c unidata metpy=0.5.0

