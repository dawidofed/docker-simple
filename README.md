# Projekt docker-simple

_(projekt powstał na potrzeby własne, ale oczywiście wszystkie uwagi jak najbardziej mile widziane)_

<hr>

Zawartość dockera:
- NGINX
- PHP
- MariaDB
- Elasticsearch
- Redis
- Redis-Commander
- Maildev
- Grafana
- Adminer (for MySQL or PostgreSQL)

<hr>

### Polecenia
````
docker-compose -f docker-compose.yml up
````
````
docker exec -it mysql bash
mariadb -uroot -p
'password123'
````

### Adresy

- Strona: [127.0.0.1](http://127.0.0.1)
- PhpMyAdmin [127.0.0.1:8082](http://127.0.0.1:8082)
- Adminer [127.0.0.1:6080](http://127.0.0.1:6080)
MariaDB (host: mariadb:3306): root/password123
PostgreSQL (host: postgres:5432): root/kisphp
- Elasticsearch: [127.0.0.1:9200](http://127.0.0.9200)
- Redis: [127.0.0.1:8081](http://127.0.0.1:8081)
- Maildev: [127.0.0.1:8002](http://127.0.0.1:8002)

<hr>

TODO w przyszłości:

- Greylog

UWAGA: używasz na własną odpowiedzialność. :)