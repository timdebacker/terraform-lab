#! /bin/bash

set -xeo pipefail

sudo yum update -y
sudo yum install docker -y

sudo service docker start
sudo docker run -d -p 80:80 strm/helloworld-http
