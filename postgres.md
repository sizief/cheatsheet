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

  - Create user    
   `CREATE ROLE username WITH LOGIN ENCRYPTED PASSWORD 'qwerty' SUPERUSER;`  
   
  - Create Database    
   `CREATE DATABASE databasename WITH OWNER username ENCODING 'UTF8';`

  - Drop Role
   `Drop role role_name`