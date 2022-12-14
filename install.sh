apt -y update
apt -y upgrade
apt -y full_upgrade
apt -y autoremove
apt -y install ubuntu-minimal ubuntu-standard ubuntu-desktop
apt -y update
apt -y upgrade
apt -y full_upgrade
apt -y autoremove
apt -y install ca-certificates gnupg lsb-release
mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
apt -y update
apt -y install docker-ce docker-ce-cli containerd.io docker-compose-plugin
service docker start
docker run hello-world
