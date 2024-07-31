# !!!! DON'T RUN unconsiously
docker compose run --rm  certbot certonly --webroot --webroot-path /var/www/certbot/ --dry-run -d example.org
docker compose run --rm certbot renew --dry-run