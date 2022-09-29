docker run -t -i --name factorial -e MYSQL_ROOT_PASSWORD=password -e MYSQL_USER=sammy -e MYSQL_PASSWORD=password -v /home/ali/projects/factorial/mysql-data:/var/lib/mysql --rm -p 3306:3306 mysql:5.7.33

CREATE DATABASE menagerie
CREATE USER 'sammy'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';
GRANT ALL PRIVILEGES ON factorial_development.* TO 'sammy'@'localhost' WITH GRANT OPTION;
