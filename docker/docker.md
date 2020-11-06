## Docker
 - create `Dockerfile`
 - `docker build -t image_name:version .` # create image
 - `docker images` # check all images
 - `docker run --name container_name -p 80:80 image_name` # create and start container
 - `docker exec -it container_name bash` # run bash inside container
 - `docker stop container_name`
 - `docker start container_name` # start container
 - `docker rm container_name` # remove container 
 - `docker rm $(docker ps -a -q)` # remove all containers  
 - `docker pull image-name-here`
 - `docker ps -a`
 - `docker rmi image_id`

 - ports HOST:CONTAINER
 - ports CONTAINER
 - `Expose` only to other machines not host
 
## Docker compose
 - Create `docker_compose.yml`
 - `docker-compose build` # create images
 - `docker-compose up` # create and start containers
 - `docker-compose down` # stop and remove containers
 - `docker-compose start` # start containers
 - `docker-compose run app rails generate model` #- docker-compose run container-name bash

## Postgresql
 - `docker run --name solo-postgres -e POSTGRES_PASSWORD=1 -e POSTGRES_USER=ali -e POSTGRES_DB=rails-engine -e PGDATA=/var/lib/postgresql/9.5/rails-engine -e POSTGRES_HOST_AUTH_METHOD=trust -p 5432:5432 postgres:9.4.5`
