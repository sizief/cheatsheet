This is the normal steps:
## Docker
 - create `Dockerfile`
 - `docker build -t image_name:version .` # create image
 - `docker images` # check all images
 - `docker run image_name --name container_name` # create and start container
 - `docker stop container_name`
 - `docker start container_name` # start container
 - `docker container rm container_name` # remove container 
 
## Docker compose
 - Create `docker_compose.yml`
 - `docker-compose build` # create images
 - `docker-compose up` # create and start containers
 - `docker-compose start` # start containers
 - `docker-compose down` # stop and remove containers
 -


---- Mess of data from here. Clean this up later.
** Run commands with SUDO or add your user to docker group** 
if you want to use docker in develpment, then you should define a volume and pass it in docker run command. 
Also you can define the volume in compose file.
 
##Most used  
>docker build -t imagename:tagname .
>docker run -itP -v $(pwd):/app (->this is working directory specify in dockerfile) imagename:tagname .
###open bash in container, eg: docker exec -it b7e23200d7fc /bin/bash    
>docker exec -it container-name-here /bin/bash OR
>docker-compose run app rails generate model
>docker-compose run app rails c
>docker-compose run app rake db:create  
>docker-compose run app rake db:migrate  
###remove all containers  
>docker rm $(docker ps -a -q)

  
  
##general 
>docker version  
  
>docker info  
  
  
##docker-compose  
###build images  
docker-compose build  
  
###run service  
docker-compose up  
  

##Images  
###show the list of images  
>docker images  
  
###remove image
>docker rmi image-name or image-id  
  
###create image
>docker build -t image-name:image-tag .
  
###pull the docker imag
>docker pull image-name-here
  
  
##Containers
###show the list of active containers
>docker ps  
  
###show the list of all containers  
>docker ps -a  
  
###remove docker container
>docker rm container-id-or-name  
  
###resume the container we created before with interactive SUDOT, eg: docker start webserver  
>docker start cntainer-name-here -i  
  
###stop container , eg: docker stop webserver 
>docker stop container-name  
  
###run a NEW container and load it with an image  
>docker run image-name-here  

###run container with volume
docker run -itP -v $(pwd):/app (->this is working directory specify in dockerfile) imagename:tagname .

###run container with exposed port
>docker run -itP image-name

### Run bash one container in compose
docker-compose run container-name bash
  
 
