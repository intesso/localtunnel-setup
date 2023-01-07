# https://certbot.eff.org/lets-encrypt/ubuntufocal-nginx

# copy ./nginx.conf to server: /etc/nginx/sites-available/kartgames.conf
cp nginx-tunnel.conf /etc/nginx/sites-available/tunnel.conf
sudo ln -s /etc/nginx/sites-available/tunnel.conf /etc/nginx/sites-enabled/

nginx -s reload

# https://ongkhaiwei.medium.com/generate-lets-encrypt-certificate-with-dns-challenge-and-namecheap-e5999a040708
# https://www.linkedin.com/pulse/wildcard-certificates-using-lets-encrypt-certbot-pallavi-udhane

# certbot -d tunnel.intesso.io -d *.tunnel.intesso.io --nginx

certbot --preferred-challenges=dns -d tunnel.intesso.io -d *.tunnel.intesso.io --nginx

certbot certonly --manual --preferred-challenges dns -d tunnel.intesso.io -d *.tunnel.intesso.io
# you have to setup nginx manually

# sudo certbot renew --dry-run
