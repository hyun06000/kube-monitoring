sudo apt-get update && sudo apt-get install -y apt-transport-https curl

# Add k8s repository
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list

# install k8s
sudo apt-get update
sudo apt-get install -y kubelet kubeadm kubectl

# start kubelet
sudo systemctl enable kubelet
sudo systemctl start kubelet