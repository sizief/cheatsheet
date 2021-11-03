	## General
   - Run the service  
   `sudo service postgresql start `  

  - Service status  
   `pg_lsclusters`  

  - Login  
   `sudo -u postgres psql`  

  - Connect to DB    
   `\c DATABASE_NAME`  
     
  - List of DB    
   `\l`

  - List of tables    
   `\d`  -> tab

  - Show list vertically
   `\x`

  - Create user    
   `CREATE ROLE username WITH LOGIN ENCRYPTED PASSWORD 'qwerty' SUPERUSER;`  
   
  - Create Database    
   `CREATE DATABASE databasename WITH OWNER username ENCODING 'UTF8';`

  - Drop Role
   `Drop role role_name`
   
   - Run in docker
   `docker run --name solo-postgres -e POSTGRES_PASSWORD=1 -e POSTGRES_USER=ali -e POSTGRES_DB=rails-engine -e PGDATA=/var/lib/postgresql/9.5/rails-engine -e POSTGRES_HOST_AUTH_METHOD=trust -p 5432:5432 postgres:9.4.5`
   
   
   Backup
   - sudo su - postgres
   - pg_dump --column-inserts --data-only parvazhub_production | gzip > backup-june-19-2021.gz
   - sudo mv /var/lib/postgresql/backup-june-19-2021.gz /home/sizief/
   -  scp -P PORT USER@209.44.111.203:/home/sizief/backup-june-19-2021.gz ./
   -  gunzip backup-june-19-2021.gz
   -  cat backup-june-19-2021.sql | docker exec -i your-db-container psql -U postgres


