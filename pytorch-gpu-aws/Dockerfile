FROM gcr.io/tensorflow/tensorflow:latest-gpu-py3

MAINTAINER Max Joseph <maxwell.b.joseph@colorado.edu>

RUN apt-get update && apt-get install -y --no-install-recommends \
	git \
	libtcmalloc-minimal4 && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/*

ENV LD_PRELOAD /usr/lib/libtcmalloc_minimal.so.4

RUN pip3 install http://download.pytorch.org/whl/cu80/torch-0.3.0.post4-cp35-cp35m-linux_x86_64.whl && \
	pip3 install torchvision pandas scikit-learn scipy && \
	pip install awscli

EXPOSE 8888

WORKDIR "/home/"

CMD ["/run_jupyter.sh", "--allow-root"]
