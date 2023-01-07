# https://certbot.eff.org/lets-encrypt/ubuntufocal-nginx

# copy ./nginx.conf to server: /etc/nginx/sites-available/kartgames.conf
cp nginx-tunnel.conf /etc/nginx/sites-available/tunnel.conf
sudo ln -s /etc/nginx/sites-available/tunnel.conf /etc/nginx/sites-enabled/

nginx -s reload

certbot -d tunnel.intesso.io -d *.tunnel.intesso.io --nginx

# sudo certbot renew --dry-run
