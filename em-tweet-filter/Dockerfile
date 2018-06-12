FROM tensorflow/tensorflow:1.9.0-rc0-gpu-py3

MAINTAINER Jeremy Diaz <jeremy.diaz@colorado.edu>

RUN apt-get update && apt-get install -y --no-install-recommends \
	git \
	libtcmalloc-minimal4 && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/*

ENV LD_PRELOAD /usr/lib/libtcmalloc_minimal.so.4

RUN pip3 install awscli \
	botometer \
	gensim \
	livelossplot \
	nltk \
	pandas \
	pybind11 \
	scikit-learn \
	scipy \
	torch \
	tweepy \
	xlrd

WORKDIR "/home/"

RUN git clone https://github.com/facebookresearch/fastText.git && \
	cd fastText && \
	pip install .

EXPOSE 8888

CMD ["/run_jupyter.sh", "--allow-root"]

