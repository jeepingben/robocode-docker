# robocode-docker
Dockerfile that allows running robocode reliably

copy Dockerfile to a clean directory
docker build -t robocode-docker .

docker run --device /dev/video0 --name robocode-container -p 53543:22 -i -t robocode-docker /usr/sbin/sshd -D

docker inspect robocode-containe |grep IPAddress

ssh -Y root@{IP_ADDRESS} -C /root/robocode.distribution/target/robocode-1.9.2.5-setup/robocode-bc.sh

password is r0b0c0de

