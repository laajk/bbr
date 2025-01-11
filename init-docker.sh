# Add Docker's official GPG key:
apt-get update
apt-get install -y wget ca-certificates curl sudo dnsutils net-tools vim
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
apt-get install docker-ce docker-ce-cli containerd.io -y
wget -O /usr/bin/docker-compose https://github.com/docker/compose/releases/download/v2.32.1/docker-compose-linux-x86_64
chmod +x /usr/bin/docker-compose
echo vim
echo bbr
echo ssh port
echo curl https://get.acme.sh | sh -s email=my@example.com
