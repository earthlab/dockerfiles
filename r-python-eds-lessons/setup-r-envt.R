# packages to install
packages <- c("dplyr",
              "ff",
              "ggplot2",
              "ggmap",
              "knitr",
              "maps",
              "raster",
              "rasterVis",
              "rgdal",
              "RJSONIO",
              "rmarkdown",
              "RSAGA",
              "rtweet",
              "sf",
              "stringr",
              "widyr")
              
# iterate packages and install by name
for (package in packages) {
  if (!package %in% rownames(installed.packages())) {
    cat("Installing package", package, '\n\n')
    install.packages(package, repos = "http://cran.us.r-project.org")
  }
}

## flag unsuccessful package installs
check_pkg = !packages %in% rownames(installed.packages())
if(sum(check_pkg) > 0){
  problem_pkg = packages[check_pkg]
  problem_pkg = paste(problem_pkg, collapse = ', ')
  stop(paste('Installation of package(s)', problem_pkg, 'was unsuccessful.'))
}
