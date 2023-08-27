# Package manager update
sudo apt-get update
sudo apt-get upgrade -y


# Docker install
curl -sSL https://get.docker.com | sh

# Docker without `sudo`
sudo usermod -aG docker pi

# Start Docker
sudo systemctl enable docker
sudo systemctl start docker

# Check
docker --version