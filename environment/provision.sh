#!/bin/bash

# Update the sources list
sudo apt-get update -y

# upgrade any packages available
sudo apt-get upgrade -y

# install nginx
sudo apt-get install nginx -y

# install git
sudo apt-get install git -y

# install nodejs
sudo apt-get install python-software-properties
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install nodejs -y

# install pm2
sudo npm install pm2 -g

# navigates to directory to install the depenencies/librabries
cd /app

# reads the json object to get the dependencies., redds the package.json file to
# find the depenencies that are needed to be installed. the package.json is
# written in javascript.
npm install

# starts the app by reading the json "start" in the package
npm start
