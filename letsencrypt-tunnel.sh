# https://certbot.eff.org/lets-encrypt/ubuntufocal-nginx

# copy ./nginx.conf to server: /etc/nginx/sites-available/kartgames.conf
cp nginx-localtunnel.conf /etc/nginx/sites-available/tunnel.conf
sudo ln -s /etc/nginx/sites-available/tunnel.conf /etc/nginx/sites-enabled/

# test nginx
sudo nginx -t
# reload nginx config
nginx -s reload
# restart nginx (not needed, reload is enough)
sudo service nginx restart

# certbot command that would work without wildcard 
# certbot -d tunnel.intesso.io -d *.tunnel.intesso.io --nginx

# manual steps to install the wildcard dns challenge
# https://ongkhaiwei.medium.com/generate-lets-encrypt-certificate-with-dns-challenge-and-namecheap-e5999a040708
# https://www.linkedin.com/pulse/wildcard-certificates-using-lets-encrypt-certbot-pallavi-udhane
certbot certonly --manual --preferred-challenges dns -d tunnel.intesso.io -d *.tunnel.intesso.io

# you have to setup nginx manually
# sudo certbot renew --dry-run
