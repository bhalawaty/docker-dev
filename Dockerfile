FROM php:7.4-fpm


# Install imporant system libs
RUN apt-get update && apt-get install -y \
    git \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip

# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Install PHP extensions
RUN docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd

# install Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer


WORKDIR /var/www
