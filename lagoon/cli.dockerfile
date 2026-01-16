FROM uselagoon/php-8.3-cli:latest AS builder

# Copy composer files
COPY composer.* /app/
COPY patches /app/patches

# Copy frontend files
COPY package.json package-lock.yaml /app/

# Copy all files
COPY . /app

# Install composer dependencies
RUN composer install --no-dev --prefer-dist

# Build frontend
RUN npm install
RUN npm run build

FROM uselagoon/php-8.3-cli:latest
COPY --from=builder /app /app

ENV WEBROOT=public
