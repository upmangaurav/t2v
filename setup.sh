

#apt install ubuntu-drivers-common
#sudo ubuntu-drivers autoinstall

wget -P . 'http://us.download.nvidia.com/tesla/410.104/NVIDIA-Linux-x86_64-410.104.run'
chmod +x NVIDIA-Linux-x86_64-410.104.run
sudo ./NVIDIA-Linux-x86_64-410.104.run


conda env create -f requirements.yml
sudo rm -f /etc/boto.cfg




jupyter notebook --ip=0.0.0.0 --port=8888 --no-browser &
