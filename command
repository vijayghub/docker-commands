==========
class 1
==========

Install docker

================
1) windows
- windows tool box

2) Linux
- epel repositoried are installed
- yum install docker
or 
goto get.docker.com


curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh

b) using script



3) AWS
- epel repositoried are installed
- yum install docker

service docker status
service docker start
systemctl enable docker

docker info
docker search <imagename>

docker search hello-world

-list docker images
docker images

- list the running
docker ps

- download images

docker pull hello-world

docker run -itd -p 80:80 tutum/hello-world

docker stop <container id>
docker start <continer	id>

docker ps

- all container even not running or existed status

docker ps -a

install docker on aws
=--------------------
https://docs.aws.amazon.com/AmazonECS/latest/developerguide/docker-basics.html


=========
class2
=========

Steps to install docker on aws
=-----------------------------

sudo yum update -y
sudo amazon-linux-extras install docker
sudo yum install docker
sudo service docker start
sudo usermod -a -G docker ec2-user
(Add the ec2-user to the docker group so you can execute Docker commands without using sudo)
sudo systemctl enable docker 
--------------------------------------------------------
docker run -itd -p 80:80 tutum/hello-world

docker images
docker ps
docker ps -a

docker rm <containerId>
->if its running container
docker stop <containerId>

docker rm <containerId>
docker rm -f <containerId>

dcoker rmi <image name>

docker pull centos
docker run -it centos

exit - will stop the container and come out

docker start contID
docker stop contID 

ctl+PQ - > you will come out container . container will be running

yum install git -y

docker commit <conatiner ID >

docker tag <contId > "dockerhubId/image"
docker tag <contif> "vijay2018/centos"

docker login
docker logout

- to push image to dockerhub
docker push  <docker image name>
 
docker run -it centos

docker pull vijay2018/centos:latest

docker attach 2fca25bc6856
- login to container

docker ps -q
- list continer id for running contianers
dokcer ps -aq
- list all stopped and running container IDS

docker images
docker image -q
- list only image id

- remove all running and stopped containers
docker rm -f $(docker ps -aq)

- remove all images
docker rmi -f $(docker images -q)

==================================
class -3
==================
docker attach cid
ctrl+pq

- show complete details about container 
docker inspect cf395b8b2414

docker pause cf395b8b2414
docker unpause cf395b8b2414

- it will kill the running container
note: container will be stopped status and we start again
docker kill contid

docker stop cid

docker rm cid
docker rm -f cid


very  imp command used in real-tim
docker exec -it cf395b8b2414 /bin/bash
exit
-  container still running


nginx - webserver
=================

docker run -it -p 81:80 nginx   - logged in as root so you will be interactive mode
docker run -itd -p 81:80 nginx  - run as detached mode 
docker run -itd -p 82:80 nginx

Note: once poort is mapped on nginx server we cannot use the same port. so new port for new nginx server 

run jenkins in docker
--------------------
docker run -itd -p 8087:8080 jenkins:2.60.3
docker exec -it cid /bin/bash

cat /var/jenkins_home/secrets/initialAdminPassword



