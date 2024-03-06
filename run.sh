#!/bin/bash

# Update package list
sudo apt update -y

# Install necessary packages
sudo apt install -y curl git

# Install Node.js and npm
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt-get install -y nodejs

# Install corepack
sudo npm install -g corepack

# Enable and prepare corepack
corepack enable
corepack prepare yarn@stable --activate --yes

# Install pm2 globally
sudo yarn global add pm2

# Clone the repository
git clone https://github.com/Joelayo/Week-2_Azure_CloudOps.git
cd Week-2_Azure_CloudOps/client
 npm install
 npm run build
 sudo cp -r build/* /var/www/html
#App Tier
cd ../..
chmod u+x setup1.sh
./setup1.sh

#azlogin using service principle

# app_id = "8da73450-e5be-4053-ba0e-7c22dd1cce49"
# password = "Nv88Q~ARXpyljNIt8f_p1vL.VjWtnGB0dzh9Kcge"
# tenant_id = "4da5ce08-e277-4580-b338-7cf1b5e7e3ba"

# curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
# az login --service-principal -u ${app_id} -p ${password} --tenant ${tenant_id}

# dbhost = az mysql server show --resource-group {0} --name {1} --query fullyQualifiedDomainName -o tsv

cd Week-2_Azure_CloudOps/backend

cat > .env <<EOF
# Content of .env file
DB_HOST=demopocsqlewedo.database.windows.net
DB_USERNAME=azureuser
DB_PASSWORD=password@123@9(&)
PORT=3306
EOF
npm install
npm install dotenv
sudo apt install mysql-server -y
