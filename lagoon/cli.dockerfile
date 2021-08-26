FROM uselagoon/php-7.4-cli-drupal:latest

COPY . /app

RUN COMPOSER_MEMORY_LIMIT=-1 composer install --no-dev

# RUN mkdir -p -v -m775 /app/web/sites/default/files
    
# Define where the Drupal Root is located
ENV WEBROOT=public
