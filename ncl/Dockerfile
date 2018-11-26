FROM jupyter/scipy-notebook

MAINTAINER Max Joseph <maxwell.b.joseph@colorado.edu>

USER root

RUN apt-get update && \
    apt-get install -y csh libfreetype6-dev pkg-config libx11-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

USER $NB_USER

ENV DISPLAY=:0.0

RUN conda install --yes -c conda-forge ncl
