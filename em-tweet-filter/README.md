# em-tweet-filter

Docker container with Python 3.5, Pytorch, NVIDIA drivers, and the Amazon Web Services command line interface.

This also contains some API libraries (`tweepy`, `botometer`), NLP libraries (`NLTK`, `fastText`, and `gensim`), and a library to handle excel spreadsheets (`xlrd`).

Also, a handy library for live-plotting loss curves (`livelossplot`)

## How to use

This image requires that the NVIDIA drivers and nvidia-docker are installed on the host machine. 
To run, the image and interface with the Jupyter Notebook:

```
nvidia-docker run -it -p 8888:8888 earthlab/em-tweet-filter
```    

You can then view the Jupyter Notebook by opening `http://localhost:8888` in your web browser.<br><br><br>

# For p2 instances (the weaker GPUs) -- (p3 further below)
## But AWS is causing so many problems! AWS giveth & AWS taketh away: Fixes for the unsavories

When trying to run this image from a newly launched EC2 instance, there is a host of problems which I did not find immediately intuitive. The following aims to help with those problems - primarily for [me](https://github.com/jdiaz4302/) when I encounter them in the future, however feel free to request assistance.

Also: make sure your EC2 instance has 8888 port access

Note: The following are meant to be run in order (i.e. Set up -> To fix nvidia problems -> to reinstall docker...)

Also note: this is all expected to be run with the **earthlab-nvidia-docker** Amazon Machine Image (AMI)

### Set up

1. To have sudo authority - `sudo su`
2. Update everything - `sudo apt-get upgrade` (sometimes this seems to fail for no apparent reason, try repeating)
3. When prompted with selection menus, "Keep local..."

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
2. Precaution ontinued... - `sudo apt-get purge -y nvidia-docker` (it's okay if this can't locate nvidia-docker)
3. Repo set up - `curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | \`
4. Repo continued... - `  sudo apt-key add -`
5. Repo continued... - `distribution=$(. /etc/os-release;echo $ID$VERSION_ID)`
6. Repo continued... - `curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | \`
7. Repo continued... - `  sudo tee /etc/apt/sources.list.d/nvidia-docker.list`
8. Pull from repo - `sudo apt-get update`
9. Installing nvidia docker - `sudo apt-get install -y nvidia-docker2`
10. Reloading config - `sudo pkill -SIGHUP dockerd`

Huge thanks to: https://github.com/NVIDIA/nvidia-docker#ubuntu-distributions

And now you should be able to run `nvidia-docker run -it -p 8888:8888 earthlab/em-tweet-filter`!

# p3 instances (stronger GPU)

The p3-instance process is much simpler. This docker image can be sucessfully used by only:

1. Using the community AMI: **Deep Learning AMI (Ubuntu) Version 9.0**
2. Launching the image (`nvidia-docker run -it -p 8888:8888 earthlab/em-tweet-filter`) from within the instance
3. Installing PyTorch 0.4.0 with the proper CUDA version inside the Docker image by...
4. `pip3 install http://download.pytorch.org/whl/cu90/torch-0.4.0-cp35-cp35m-linux_x86_64.whl`
