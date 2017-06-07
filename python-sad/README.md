# python-sad

Docker container with [Anaconda](http://continuum.io/downloads) and a set of packages for spatial adjusted distance calculations.

## How to use

Download and run this image using the following commands:

```
docker pull earthlab/python-sad
docker run -i -t earthlab/python-sad /bin/bash
```    

To use the Jupyter notebook:

```
docker run -it --rm -p 8888:8888 earthlab/python-sad
```

You can then view the Jupyter Notebook by opening `http://localhost:8888` in your browser, or `http://<DOCKER-MACHINE-IP>:8888` if you are using a Docker Machine VM.

