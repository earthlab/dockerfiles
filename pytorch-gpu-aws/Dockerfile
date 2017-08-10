FROM gcr.io/tensorflow/tensorflow:latest-gpu-py3

MAINTAINER Max Joseph <maxwell.b.joseph@colorado.edu>

RUN apt-get update && apt-get install -y --no-install-recommends \
	git && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/*

RUN pip install http://download.pytorch.org/whl/cu80/torch-0.2.0.post1-cp35-cp35m-manylinux1_x86_64.whl  && \
	pip install torchvision pandas && \
	pip install awscli

EXPOSE 8888

WORKDIR "/home/"

CMD ["/run_jupyter.sh", "--allow-root"]
