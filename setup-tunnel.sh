#!/bin/bash

# pick a place where the files will live
git clone https://github.com/intesso/localtunnel-server.git
cd localtunnel-server
npm install

# server set to run on port 9876
# bin/server --port 9876

# example client use to expose local app on port 8080
# lt --host http://intesso.io:9876 --subdomain test --port 8080
# lt --host https://tunnel.intesso.io --subdomain secure-test --port 8080
