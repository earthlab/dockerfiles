FROM jupyter/scipy-notebook

MAINTAINER Max Joseph <maxwell.b.joseph@colorado.edu>

USER root

RUN apt-get update && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
    
USER $NB_USER

RUN conda install ipyparallel && \
    ipcluster nbextension enable --user

RUN conda install -n python2 --quiet --yes \
    'ipyparallel' \
    'pandas'

RUN conda install -n python2 -c conda-forge \
    'gdal=2.1.3' \
    'awscli'

RUN conda install -n python2 -c jochym natgrid=0.2

