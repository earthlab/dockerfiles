# em-tweet-filter

Docker container with Python 3.5, Pytorch, NVIDIA drivers, and the Amazon Web Services command line interface.

This also contains some API libraries (`tweepy`, `botometer`), NLP libraries (`NLTK`, `fastText`, and `gensim`), and a library to handle excel spreadsheets (`xlrd`).

## How to use

This image requires that the NVIDIA drivers and nvidia-docker are installed on the host machine. 
To run, the image and interface with the Jupyter Notebook:

```
nvidia-docker run -it -p 8888:8888 earthlab/em-tweet-filter
```    

You can then view the Jupyter Notebook by opening `http://localhost:8888` in your web browser.<br><br><br>

## But AWS is causing so many problems! AWS giveth & AWS taketh away: Fixes for the unsavories

When trying to run this image from a newly launched EC2 instance, there is a host of problems which I did not find immediately intuitive. The following aims to help with those problems - primarily for [me](https://github.com/jdiaz4302/) when I encounter them in the future, however feel free to request assistance.

Also: make sure your EC2 instance has 8888 port access

### Set up

1. To have sudo authority - `sudo su`
2. Update everything - `sudo apt-get upgrade`
3. When prompted with selection menus, keep all

### To fix nvidia problems

1. To remove current - `sudo apt-get purge nvidia*`
2. To add new repo - `sudo add-apt-repository ppa:graphics-drivers`
3. To pull from new repo - `sudo apt-get install nvidia-384`
4. To implement changes - `sudo reboot`
5. Reconnect to the rebooted instance - it will have closed
6. To visually check for desired nvidia version - `nvidia-smi`

Huge thanks to: http://www.linuxandubuntu.com/home/how-to-install-latest-nvidia-drivers-in-linux

### To reinstall docker

1. Add key and repo for Docker - `curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -`
2. More repo set up - `sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"`
3. Update from repo - `sudo apt-get update`
4. Ensuring download from correct repo - `apt-cache policy docker-ce`
5. Actual download - `sudo apt-get install -y docker-ce`

Huge thanks to: https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-16-04

### To reinstall nvidia-docker

Nvidia-docker gets removed in the above steps, so this is adding it back

1. Precautiously removing current nvidia-docker - `docker volume ls -q -f driver=nvidia-docker | xargs -r -I{} -n1 docker ps -q -a -f volume={} | xargs -r docker rm -f`
2. Precaution ontinued... - `sudo apt-get purge -y nvidia-docker`
3. Repo set up - `curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | \`
4. Repo continued... - `  sudo apt-key add -`
5. Repo continued... - `distribution=$(. /etc/os-release;echo $ID$VERSION_ID)`
6. Repo continued... - `curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | \`
7. Repo continued... - `  sudo tee /etc/apt/sources.list.d/nvidia-docker.list`
8. Pull from repo - `sudo apt-get update`
9. Installing nvidia docker - `sudo apt-get install -y nvidia-docker2`
10. Reloading config - `sudo pkill -SIGHUP dockerd`

Huge thanks to: https://github.com/NVIDIA/nvidia-docker#ubuntu-distributions
