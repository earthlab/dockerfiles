FROM continuumio/anaconda3

RUN apt-get update \
  && apt-get install -y \
    build-essential \
    libcurl4-openssl-dev  \
    libgeos-dev  \
    libgdal-dev  \
    libproj-dev \
    libssl-dev  \
    libudunits2-dev  \
    r-base-core

COPY setup-r-envt.R setup-r-envt.R

RUN Rscript setup-r-envt.R

RUN conda config --add channels conda-forge

RUN conda config --set channel_priority strict

COPY environment.yml environment.yml

RUN conda update -n base -c defaults conda

RUN conda env update -n root -f environment.yml

RUN conda list

RUN conda clean -tipsy

COPY import_check.py import_check.py

RUN python import_check.py
