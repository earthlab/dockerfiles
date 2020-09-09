FROM jupyter/scipy-notebook

MAINTAINER Joe McGlinchy <joseph.mcglinchy@colorado.edu>

USER root

RUN apt-get update && \
    apt-get install -y libfreetype6-dev pkg-config libx11-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
    
USER $NB_USER



RUN conda config --remove channels defaults && \
  conda config --add channels conda-forge && \
  conda install --yes -c conda-forge \
    python=3.7 \
    awscli \
    basemap \
    cartopy \
    gdal \
    geopandas \
    h5py \
    ipyparallel \
    ncurses \
    netcdf4 \
    pandas \
    pyhdf \
    pysal \
    xarray \
    bottleneck \
    cython \      
    dask \          
    ipython \      
    jupyter \     
    jupyterlab \
    matplotlib \    
    pandas \       
    proj4 \        
    pyresample \
    rasterio \     
    scikit-learn \  
    scikit-image  \
    statsmodels  \ 
    seaborn   \    
    tqdm   \       
    zarr    \      
    numcodecs \     
    gcsfs      \   
    s3fs        \  
    regionmask   \ 
    xarray-topo   \
    xarray-simlab \
    satpy         \
    earthpy \
    descartes \
    pysal \
    contextily \
    spectral \
    pip

RUN pip install xshape

RUN ipcluster nbextension enable --user

COPY test.ipynb test.ipynb

RUN jupyter nbconvert --to notebook --execute test.ipynb && \
    rm test*

