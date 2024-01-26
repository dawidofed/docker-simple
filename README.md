# Projekt docker-simple

_(projekt powstał na potrzeby własne, ale oczywiście wszystkie uwagi jak najbardziej mile widziane)_

Projekt ma kilka konfiguracji. Zawartość każdej z nich i sposób uruchomienia - poniżej.

<hr>

### NGINX + PHP:

Wersję PHP można zmienić w pliku config/NGINX.PHP.Dockerfile.

````
docker-compose -f docker-compose-nginx-php.yml up
````

Strona dostępna pod adresem [127.0.0.1](http://127.0.0.1)

<hr>

### NGINX + PHP + MySQL + PhpMyAdmin

Wersję PHP można zmienić w pliku config/NGINX.PHP.MySQL.Dockerfile.

````
docker-compose -f docker-compose-nginx-php-mysql.yml up
````

Strona dostępna pod adresem [127.0.0.1](http://127.0.0.1)
PhpMyAdmin - [127.0.0.1:8081](http://127.0.0.1:8081)

