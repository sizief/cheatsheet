Main config 
`/etc/nginx/nginx.conf`

Status
`systemctl status nginx`
`systemctl stop nginx`
`systemctl start nginx`
`systemctl restart nginx`
`sudo nginx -t` to check the config

Steps to add website
`sudo mkdir -p /var/www/example.com/html`
`sudo chown $USER:$USER /var/www/example.com/html`
`sudo chmod -R 755 /var/www/`
create htnl file inside the example.com folder
`sudo ln -s /etc/nginx/sites-available/example.com /etc/nginx/sites-enabled/`
`vim /etc/nginx/nginx.conf` and then uncomment `server_names_hash_bucket_size 64;`
`sudo nginx -t`
`sudo systemctl restart nginx`

## logs
`cat /var/log/nginx/error.log`
`cat /var/log/nginx/access	.log`