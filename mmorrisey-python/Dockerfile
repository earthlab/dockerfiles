FROM windj007/jupyter-keras-tools

MAINTAINER Max Joseph <maxwell.b.joseph@colorado.edu>

RUN apt-get update -qq \
 && apt-get install --no-install-recommends -y \
    git \
    libspatialindex-dev

ENV USE_SETUPCFG=0

# install dependencies from python packages
RUN pip --no-cache-dir install \
    awscli \
    geopandas \
    matplotlib \
    netCDF4 \
    networkx \
    numpy \
    osmnx \
    pandas \
    pysal \
    seaborn \
    sklearn
 
EXPOSE 8888

WORKDIR "/notebook/"

ENTRYPOINT ["/entrypoint.sh"]
CMD [ "jupyter", "notebook", "--ip=0.0.0.0", "--allow-root" ]
