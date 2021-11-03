sudo yum install docker -y
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker 
sudo service docker start
docker run -p 80:80 --rm sizief/sinatra