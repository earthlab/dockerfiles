FROM jupyter/scipy-notebook

MAINTAINER Max Joseph <maxwell.b.joseph@colorado.edu>

USER root

RUN apt-get update && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
    
USER $NB_USER

RUN conda install --quiet --yes \
    'ipyparallel'
