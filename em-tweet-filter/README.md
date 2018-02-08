# em-tweet-filter

Docker container with Python 3.5, Pytorch, NVIDIA drivers, and the Amazon Web Services command line interface.

This also contains some API libraries (`tweepy`, `botometer`), NLP libraries (`NLTK`, `fastText`, and `gensim`), and a library to handle excel spreadsheets (`xlrd`).

## How to use

This image requires that the NVIDIA drivers and nvidia-docker are installed on the host machine. 
To run, the image and interface with the Jupyter Notebook:

```
nvidia-docker run -it -p 8888:8888 earthlab/em-tweet-filter
```    

You can then view the Jupyter Notebook by opening `http://localhost:8888` in your web browser.

