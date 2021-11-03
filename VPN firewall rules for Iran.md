  

\# .zshrc

alias protect="yes | ~/scripts/protect.sh"

alias unprotect="yes | ~/scripts/unprotect.sh"

\# ~/scripts/protect.sh

#!/bin/bash

sudo ufw reset

sudo ufw default deny incoming

sudo ufw default deny outgoing

sudo ufw allow out on wlp0s20f3 from any to #VPN server

sudo ufw allow out on docker0 from any to any #docker

sudo ufw allow out on br-7959387394a7 from any to any #docker-compose, find this using ifconfig

sudo ufw allow out on tun0 from any to any #vpn

sudo ufw enable

\# ~/scripts/unprotect.sh

#!/bin/bash

sudo ufw reset

sudo ufw default deny incoming

sudo ufw default allow outgoing

sudo ufw enable