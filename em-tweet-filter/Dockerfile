FROM pytorch/pytorch

MAINTAINER Jeremy Diaz <jeremy.diaz@colorado.edu>

RUN apt-get update && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/*

RUN pip install jupyter tweepy nltk gensim xlrd botometer livelossplot

RUN git clone https://github.com/facebookresearch/fastText.git && \
	cd fastText && \
	pip install .

EXPOSE 8888

WORKDIR "/home/"

CMD ["/run_jupyter.sh", "--allow-root"]
