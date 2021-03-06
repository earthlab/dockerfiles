This Dockerfile contains the [smapr](https://github.com/earthlab/smapr) package built upon a general purpose spatial analysis environment that is R-centric.

To interactively run the container:

## How to use

To use Rstudio:

```
docker run -e PASSWORD=yourpassword -d -p 8787:8787 earthlab/smapr
```

In a web browser, navigate to localhost:8787.
Log in with username: rstudio, and the password your provided in your call to `docker run`.

## Example: saving a GeoTIFF to the local filesystem

If you want to use the smapr Docker image to produce and save a GeoTIFF to the local filesystem, you'll need to mount a volume, e.g., '~/Desktop'.

 ```
docker run -v ~/Desktop:/home -it earthlab/smapr bash
 ```

 Then, inside the container:

 ```
cd home
R
 ```

Then in R:

```R
library("smapr")

files <- find_smap(id = "SPL3SMP", date = "2015.05.01", version = 3)
downloads <- download_smap(files)
r <- extract_smap(downloads, name = 'Soil_Moisture_Retrieval_Data/soil_moisture')
raster::writeRaster(r, filename = "smap.tif")
```

Now, you will have a GeoTIFF called `smap.tif` on your desktop.
