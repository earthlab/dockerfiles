# r-tensorflow

Docker container with R, RStudio, tensorflow, and the R tensorflow package.

## How to use

Download and run this image using the following commands:

```
docker pull earthlab/r-tensorflow
docker run -i -t earthlab/r-tensorflow /bin/bash
```    

To use Rstudio:

```
docker run -d -p 8787:8787 earthlab/r-tensorflow
```

In a web browser, navigate to localhost:8787 (on linux) or on a Mac, substitute the location pointed to by `docker-machine ip default` for `localhost`.
Log in with username: rstudio, password: rstudio.

## Mounting folders

If you want to share a directory between your host machine and the container, use the `-v` flag in your call to `docker run`, as described [here](https://github.com/rocker-org/rocker/wiki/Sharing-files-with-host-machine).
For more information on how to take full advantage of RStudio in this image, see https://github.com/rocker-org/rocker/wiki/Using-the-RStudio-image.

## But I need package X!

Submit an issue and we'll build it for you!
