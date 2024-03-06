#!/bin/bash

chmod u+x setup.sh
./setup.sh
git clone https://github.com/Joelayo/Week-2_Azure_CloudOps.git
cd Week-2_Azure_CloudOps/client
npm install
npm run build
sudo cp -r build/* /var/www/html
