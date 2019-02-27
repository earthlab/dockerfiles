FROM earthlab/r-tensorflow

MAINTAINER "Maxwell Joseph" maxwell.b.joseph@colorado.edu

RUN apt-get update && apt-get install -y --no-install-recommends \
	libxml2-dev \
	&& \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/*

RUN install2.r --error \
	bayesplot \
	DiagrammeR \
	rgexf \
	XML

RUN Rscript -e "devtools::install_github('greta-dev/greta')"

RUN Rscript -e "greta::install_tensorflow(extra_packages = 'tensorflow-probability')"

RUN Rscript -e "library(greta)"
