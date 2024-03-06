#!/bin/bash

#App Tier
sudo apt update -y

sudo apt install apache2 -y

curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash - &&\
sudo apt-get install -y nodejs -y

sudo apt update -y

sudo npm install -g corepack -y

corepack enable

corepack prepare yarn@stable --activate --yes

sudo yarn global add pm2

git clone https://github.com/Joelayo/Week-2_Azure_CloudOps.git

cd Week-2_Azure_CloudOps/backend
cat > .env <<EOF
# Content of .env file
DB_HOST=demopocsqleeweedo.database.windows.net
DB_USERNAME=azureuser
DB_PASSWORD="password@123@9(&)"
PORT=3306
EOF
npm install
npm install dotenv
sudo apt install mysql-server -y
