# ncl

Docker container with [Anaconda](http://continuum.io/downloads) (based on Python 3.5), the Jupyter scipy stack, and the NCAR command language (NCL: https://www.ncl.ucar.edu/)

## How to use

Download and run this image using the following commands:

```
docker run -it -p 8888:8888 earthlab/ncl
```

You can then view the Jupyter Notebook by opening `http://localhost:8888` in your browser.

### Converting from grib to NetCDF

In this example, we will download two grib files and convert to NetCDF format:

```bash
wget https://nomads.ncdc.noaa.gov/data/namanl/200801/20080101/namanl_218_20080101_0000_000.grb
wget https://nomads.ncdc.noaa.gov/data/namanl/200801/20080101/namanl_218_20080101_0000_003.grb
```

Now that we have two grib files locally, we can use `ncl_convert2nc` with
wildcard expansion:

```bash
ncl_convert2nc namanl*.grb
```
