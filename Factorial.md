Devnev
bin/factorial-ssh remote_devenv start_servers --name=ali
bin/factorial-ssh ssh vagrant@YOURDEVENV.factorialhr.com

https://api-ali-factorial.factorialhr.com/sidekiq
https://ali-dev.factorialhr.com/letter_opener/
https://api-ali-factorial.factorialhr.com/backoffice/demo
https://traefik-ali.factorialhr.com/dashboard

After reboot remote
sudo systemctl restart nginx
sudo systemctl restart traefik
sudo tail -f /var/log/nginx/*log
cd /home/ubuntu/infrastructure-bootstrap/ && (tmux attach || tmuxinator)
vagrant ssh -c 'cd /home/infrastructure/ && (tmux attach || tmuxinator)'


Performance using Lighthouse
apt-get install chromium-browser
lighthouse https://factorialhr.com/ --only-categories=performance --output json --quiet --chrome-flags="--headless"

Terraform 
bin/factorio terraform help
bin/factorio terraform init datadog
bin/factorio terraform plan datadog
bin/factorio terraform apply datadog


deploy
bin/factorio deploy factorial-backend --deploy-user=ali -t staging2 -b master

to deploy latest infra to all devenvs (for example update the ssh keys)
bin/factorio deploy factorial-infrastructure -t remote_devenvs --user=ali

$redis.del('NewPayroll::Company_1')

nomad job stop -purge  factorial-backend-batch-tasks

mysql --user=factorial_development --password factorial_development
