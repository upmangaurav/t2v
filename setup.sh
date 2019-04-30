

#apt install ubuntu-drivers-common
#sudo ubuntu-drivers autoinstall
# conda env create -f requirements.yml

# wget -P . 'http://us.download.nvidia.com/tesla/410.104/NVIDIA-Linux-x86_64-410.104.run'
# chmod +x NVIDIA-Linux-x86_64-410.104.run
# sudo ./NVIDIA-Linux-x86_64-410.104.run

echo 'export CUDA_HOME=/usr/local/cuda' >> ~/.bashrc
echo 'export PATH=$PATH:$CUDA_HOME/bin' >> ~/.bashrc
echo 'export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$CUDA_HOME/lib64' >> ~/.bashrc
source ~/.bashrc


conda update -all 
sudo rm -f /etc/boto.cfg

jupyter notebook --ip=0.0.0.0 --port=8888 --no-browser 
