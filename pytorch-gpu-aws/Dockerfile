FROM gcr.io/tensorflow/tensorflow:latest-gpu-py3

MAINTAINER Max Joseph <maxwell.b.joseph@colorado.edu>

RUN apt-get update && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/*

RUN pip install http://download.pytorch.org/whl/cu80/torch-0.1.12.post2-cp35-cp35m-linux_x86_64.whl && \
	pip install torchvision pandas && \
	pip install --upgrade --user awscli

EXPOSE 8888

WORKDIR "/home/"

CMD ["/run_jupyter.sh", "--allow-root"]
