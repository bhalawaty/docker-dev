### Files Structure
````
-nginx
-src (your project)
-Dockerfile
-docker-compose.yml
````


### Ports
````
nginx - :8080
mysql - :3306
php - :9000
redis - :6379
phpmyadmin - :8083
````

### Run docker in your machine
````
$ docker-compose build 
$ docker-compose up -d 
````
### Examples how to run artisan commands
````
$ docker-compose exec webserver php artisan migrate
$ docker-compose exec webserver php artisan db:seed
````

### Another way to run artisan,composer and npm commands
##### after you run below line now you can write your commands as you like
````
$ docker-compose exec webserver bash
````
##### Examples :-
````
/var/www# npm install
/var/www# composer install
/var/www# php artisan optimize

````
### How to import database using command line
````
sudo docker exec -i dockerDev-db mysql -u homestead -psecret  databaseName < database.sql
````
