FROM gcr.io/tensorflow/tensorflow:latest-gpu-py3

MAINTAINER Max Joseph <maxwell.b.joseph@colorado.edu>

RUN apt-get update && apt-get install -y --no-install-recommends \
	git \
	libtcmalloc-minimal4 && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/*

ENV LD_PRELOAD /usr/lib/libtcmalloc_minimal.so.4

RUN pip install http://download.pytorch.org/whl/cu80/torch-0.2.0.post1-cp35-cp35m-manylinux1_x86_64.whl  && \
	pip install torchvision pandas scikit-learn scipy && \
	pip install awscli

EXPOSE 8888

WORKDIR "/home/"

CMD ["/run_jupyter.sh", "--allow-root"]
