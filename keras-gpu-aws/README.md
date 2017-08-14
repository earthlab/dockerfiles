# keras-gpu-aws

Docker container with Python 3.5, Keras, NVIDIA drivers, and the Amazon Web Services command line interface.

## How to use

This image requires that the NVIDIA drivers and nvidia-docker are installed on the host machine. 
To run, the image and interface with the Jupyter Notebook:

```
nvidia-docker run -it -p 8888:8888 earthlab/keras-gpu-aws
```    

You can then view the Jupyter Notebook by opening `http://localhost:8888` in your web browser.

