# r-greta

Docker container with R, RStudio, tensorflow, and greta.

## How to use

To use Rstudio:

```
docker run -d -p 8787:8787 earthlab/r-greta
```

In a web browser, navigate to localhost:8787.
Log in with username: rstudio, password: rstudio.

## Mounting folders

If you want to share a directory between your host machine and the container, use the `-v` flag in your call to `docker run`, as described [here](https://github.com/rocker-org/rocker/wiki/Sharing-files-with-host-machine).
For more information on how to take full advantage of RStudio in this image, see https://github.com/rocker-org/rocker/wiki/Using-the-RStudio-image.

