# !!!! DON'T RUN unconsiously
docker compose run --rm  certbot certonly --webroot --webroot-path /var/www/certbot/ --dry-run -d example.org
docker compose run --rm  certbot certonly --webroot --webroot-path /var/www/certbot/ --cert-name plutchart.com --dry-run -d sh.plutchart.com,bckp.plutchart.com
docker compose run --rm certbot renew --cert-name plutchart.com --webroot-path /var/www/certbot/
docker compose run --rm certbot renew --cert-name s-ho.me --webroot-path /var/www/certbot/ --dry-run
docker compose run --rm certbot renew --cert-name s-ho.me-0001 --webroot-path /var/www/certbot/ --dry-run