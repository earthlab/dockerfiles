FROM continuumio/anaconda3

COPY environment.yml environment.yml

RUN conda update -n base -c defaults conda

RUN conda env update -n root -f environment.yml

RUN conda list

RUN conda clean -tipsy

RUN apt-get -y install r-base-core && \
    apt-get -y install libgdal-dev && \
    apt-get -y install libssl-dev && \
    apt-get -y install libcurl4-openssl-dev && \
    apt-get -y install libudunits2-dev && \
    apt-get -y install libgeos-dev && \
    apt-get -y install libproj-dev

COPY setup-r-envt.R setup-r-envt.R

RUN Rscript setup-r-envt.R

COPY import_check.py import_check.py

RUN python import_check.py
