#!/bin/bash

# run in directory localtunnel-server
cd localtunnel-server

# server set to run on port 9876
bin/server --port 9876 --secure true --domain tunnel.intesso.io 

# example client use to expose local app on port 9000
# lt --host http://tunnel.intesso.io:9876 --port 9000
