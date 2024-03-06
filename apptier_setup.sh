#!/bin/bash

# App Tier
sudo apt update -y
sudo apt install apache2 -y
sudo apt install git

sudo dpkg --configure -a
sudo apt install -f
sudo apt update

# Install Node.js and npm
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt-get install -y nodejs npm

sudo apt update -y

# Install corepack
sudo npm install -g corepack
corepack enable
corepack prepare yarn@stable --activate --yes

# Install yarn
sudo npm install -g yarn

# Install pm2
sudo yarn global add pm2

# Clone repository
git clone https://github.com/Joelayo/Week-2_Azure_CloudOps.git

cd Week-2_Azure_CloudOps/backend

cd Week-2_Azure_CloudOps/backend
cat > .env <<EOF
# Content of .env file
DB_HOST=demopocmysqlwedo.database.windows.net
DB_USERNAME=azureuser
DB_PASSWORD="password@123@9(&)"
PORT=3306
EOF
npm install
npm install dotenv
sudo apt install mysql-server -y
