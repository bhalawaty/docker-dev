nginx - :80
mysql - :3306
php - :9000
redis - :6379
phpmyadmin - :8081
-----------
docker-compose run --rm composer update .

docker-compose run --rm npm run dev .

docker-compose run --rm artisan migrate .