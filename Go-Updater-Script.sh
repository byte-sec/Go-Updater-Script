#!/bin/bash

# Remove the old version of Go
sudo apt-get remove golang-go
sudo apt-get remove --auto-remove golang-go

# Download and install the latest version of Go
wget https://go.dev/dl/go1.20.3.linux-amd64.tar.gz
tar -xzf go1.20.3.linux-amd64.tar.gz
sudo cp -r go /usr/local

# Update the PATH environment variable to include the new Go installation
echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.bashrc
source ~/.bashrc

# Set the GOROOT and GOPATH environment variables
export GOROOT=/usr/local/go
export GOPATH=$HOME/go/bin      #default
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
source ~/.bashrc

# Verify that Go is installed and working correctly
go version
