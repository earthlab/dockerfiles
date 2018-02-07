# mmorrisey-python

Docker container with Python 3.6, Keras, NVIDIA drivers, the 
Amazon Web Services command line interface, and the following
Python packages: numpy, pysal, pandas, geopandas, osmnx,
networkx, sklearn, matplotlib, and seaborn.

## How to use

To use a GPU, this image requires that the NVIDIA drivers
and nvidia-docker are installed on the host machine.
To run, the image and interface with the Jupyter Notebook:

```
nvidia-docker run -it -p 8888:8888 earthlab/mmorrisey-python
```    

To use with a CPU, you can run

```
docker run -it -p 8888:8888 earthlab/mmorrisey-python
```


You can then view the Jupyter Notebook by opening `http://localhost:8888` in your web browser.
