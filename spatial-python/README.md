# spatial-python

Docker container with [Anaconda](http://continuum.io/downloads) (based on Python 3.5) and a set of commonly used spatial packages.

The Anaconda distribution is installed into the `/opt/conda` folder and ensures that the default user has the `conda` command in their path.

## How to use

Download and run this image using the following commands:

```
docker pull earthlab/spatial-python
docker run -i -t earthlab/spatial-python /bin/bash
```    

To use the Jupyter notebook:

```
docker run -i -t -p 8888:8888 earthlab/spatial-python /bin/bash -c "/opt/conda/bin/conda install jupyter -y --quiet && mkdir /opt/notebooks && /opt/conda/bin/jupyter notebook --notebook-dir=/opt/notebooks --ip='*' --port=8888 --no-browser"
```

You can then view the Jupyter Notebook by opening `http://localhost:8888` in your browser, or `http://<DOCKER-MACHINE-IP>:8888` if you are using a Docker Machine VM.

## But I need package X!

Submit an issue and we'll build it for you!
