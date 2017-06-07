FROM rocker/r-ver:latest

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    ssh \
    libcurl4-openssl-dev \
    man \
    less \
    vim \
    python \
    python-pip \
  && pip install awscli \
  && apt-get clean

RUN echo "install.packages('RCurl')" | R --slave 

WORKDIR /home/

ENTRYPOINT exec Rscript -e "source('https://gist.github.com/mbjoseph/9117ac9b6574aba228e5f4831ab6bed3')" \
  && aws s3 cp . s3://earthlab-ls-fire --exclude '*' --include 'BAECV*.tar.gz'
