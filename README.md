#Ports
````
nginx - :8080
mysql - :3306
php - :9000
redis - :6379
phpmyadmin - :8083
````

#Run docker in your machine
````
$ docker-compose build 
$ docker-compose up -d 
````
#Examples how to run artisan commands
````
$ docker-compose exec webserver php artisan migrate
$ docker-compose exec webserver php artisan db:seed
````
