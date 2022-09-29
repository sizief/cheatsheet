c
## Docker
 - create `Dockerfile`
 - `docker build -t image_name:version .` # create image
 - `docker images` # check all images
 - `docker run --name container_name -p 80:80 --rm image_name` # create and start container, rm after stop
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
<<<<<<< HEAD

## Postgresql
 - `docker run --name solo-postgres -e POSTGRES_PASSWORD=1 -e POSTGRES_USER=ali -e POSTGRES_DB=rails-engine -e PGDATA=/var/lib/postgresql/9.5/rails-engine -e POSTGRES_HOST_AUTH_METHOD=trust -p 5432:5432 postgres:9.4.5`
   
## Clear things
 After working with docker you may find that your free storage is getting really small. First check the space by `df -h` also you can check more in depth with `sudo ncdu -x /` which / is the path of the folder you want to check. Finally you can always run `docker system prune -a` to remove all danglong and unused objects.
 
 ## debug
 `RUN cat anything`
 `docker run --progress=plain --cache=false`
