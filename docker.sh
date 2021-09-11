yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum install docker-ce docker-ce-cli -y
service docker start
systemctl enable docker
docker pull shadowsocks/shadowsocks-libev
echo docker run -e PASSWORD=9MLSpPmNt -p 8388:8388 -p 8388:8388/udp -d --restart always shadowsocks/shadowsocks-libev
