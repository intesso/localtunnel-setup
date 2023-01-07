#!/bin/bash

# pick a place where the files will live
git clone https://github.com/intesso/localtunnel-server.git
cd localtunnel-server
npm install

# server set to run on port 9876
# bin/server --port 9876

# example client use to expose local app on port 9000
# lt --host http://tunnel.intesso.io:9876 --port 9000