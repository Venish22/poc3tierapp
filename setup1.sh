#!/bin/bash

#App Tier
chmod u+x setup1.sh
./setup1.sh
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
