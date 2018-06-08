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
	greta \ 
	rgexf \
	XML

