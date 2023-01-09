# localtunnel-setup

use these scripts to setup localtunnel server instance on a linux server

## setup procedure

```sh
./setup-tunnel.sh
./pm2.sh
./letsencrypt-tunnel.sh
```

## namecheap dns settings

```
Type	Host	Value	TTL
A Record	*	51.15.60.2	Automatic
A Record	*.tunnel	51.15.60.2	Automatic
A Record	@	51.15.60.2	Automatic
A Record	tunnel	51.15.60.2	Automatic
TXT Record	_acme-challenge.tunnel	8Q_iZjR-asdfasdfasdfasdfasdfasdfasdfasdf	Automatic
TXT Record	_acme-challenge.tunnel.intesso.io	8Q_iZjR-asdfasdfasdfasdfasdfasdfasdfasdf	Automatic
```