FROM continuumio/anaconda3

MAINTAINER  Max Joseph maxwell.b.joseph@colorado.edu

RUN apt-get update

RUN conda config --set always_yes true \
  && conda install basemap h5py mpi4py netcdf4 pysal six \
  && conda install -c ioos descartes folium \
  && pip install usgs

CMD [ "/bin/bash" ]
