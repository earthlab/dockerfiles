FROM earthlab/r-spatial-aws

MAINTAINER Max Joseph <maxwell.b.joseph@colorado.edu>

# much borrowed from rocker/geospatial and jzelner/docker-rstan Dockerfiles
RUN apt-get update \ 
	&& apt-get install -y --no-install-recommends \
	           clang-3.9 \ 
		   libv8-3.14-dev \
		   libjq-dev \
		   libv8-3.14-dev \
		   libprotobuf-dev \
		   protobuf-compiler \
		   libssh2-1-dev

RUN ln -s /usr/bin/clang++-3.9 /usr/bin/clang++ \
    && ln -s /usr/bin/clang-3.9 /usr/bin/clang

# Global site-wide config
RUN mkdir -p $HOME/.R/ \
    && echo "\nCXX=clang++ -ftemplate-depth-256\n" >> $HOME/.R/Makevars \
    && echo "CC=clang\n" >> $HOME/.R/Makevars

# Install rstan
RUN install2.r --error \
    inline \
    RcppEigen \
    StanHeaders \
    rstan \
    KernSmooth

# Config for rstudio user
RUN mkdir -p /home/rstudio/.R/ \
    && echo "\nCXX=clang++ -ftemplate-depth-256\n" >> /home/rstudio/.R/Makevars \
    && echo "CC=clang\n" >> /home/rstudio/.R/Makevars \
    && echo "CXXFLAGS=-O3\n" >> /home/rstudio/.R/Makevars \
    && echo "\nrstan::rstan_options(auto_write = TRUE)" >> /home/rstudio/.Rprofile \
    && echo "options(mc.cores = parallel::detectCores())" >> /home/rstudio/.Rprofile

RUN install2.r --error \
    assertthat \
    cowplot \
    devtools \
    elevatr \
    extraDistr \
    foreign \
    ggmap \
    ggthemes \
    ggrepel \
    gridExtra \
    ggridges \    
    hrbrthemes \
    loo \
    lubridate \
    pbapply \
    purrr \ 
    RCurl \
    reshape2 \
    rmapshaper \
    viridis

RUN R -e "devtools::install_github('thomasp85/patchwork')"

EXPOSE 8787

CMD ["/init"]

