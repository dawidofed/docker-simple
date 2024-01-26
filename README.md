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
- Elasticsearch: [127.0.0.1:9200](http://127.0.0.9200)
- Redis-Commander: [127.0.0.1:8081/](http://127.0.0.1:8081)

<hr>