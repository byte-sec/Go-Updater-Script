#!/bin/bash

# Remove the old version of Go
sudo apt-get remove golang-go
sudo apt-get remove --auto-remove golang-go

# Download and install the latest version of Go
wget https://go.dev/dl/go1.20.3.linux-amd64.tar.gz
tar -xzf go1.20.3.linux-amd64.tar.gz
sudo cp -r go /usr/local

echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.bashrc
source ~/.bashrc

# Set the GOROOT and GOPATH environment variables
echo 'export GOROOT=/usr/local/go' >> ~/.bashrc
echo 'export GOPATH=$HOME/go' >> ~/.bashrc
source ~/.bashrc

# Verify that Go is installed and working correctly
go version
