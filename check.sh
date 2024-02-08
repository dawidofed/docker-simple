#!/bin/bash

printf "Sprawdzam, czy porty wymagane do uruchomienia dockera są wolne.\n"
printf "...\n\n"
ports=("80" "443" "3306" "8002" "8081" "8082" "9200" "6379")

for port in "${ports[@]}"
do
  sudo netstat -tulpn | grep :$port
done

printf "\n"
printf "W ostatniej kolumnie wskazane są PID usług, które należy zatrzymać, aby docker poprawnie się uruchomił.\n"
printf "Można do tego użyć polecenia 'kill <PID>, aczkolwiek ze względów bezpieczeństwa lepiej użyć polecenia 'sudo systemctl stop <SERVICE_NAME>'\n"
printf "Kiedy już wskazane porty będą wolne, można bezpiecznie uruchomić dockera poleceniem: 'docker-compose -f docker-compose.yml up'\n"

printf "\n\n"
printf ">>> Have a nice day! <<<\n\n"



#
#
#
#printf "netstat:\n"
#
#
##sudo systemctl stop nginx
##lsof -i :8080
##kill <PID>
#
#sudo netstat -tulpn | grep :3306
#printf "Stop netstat\n"
#
#grep -w 3306 /etc/services
#
#printf "\n"
#
#egrep -w '53/(tcp|udp)' /etc/services
#
#
#
#printf "START\n"
