#!/bin/bash

BE_PM2_ID=3
FE_PM2_ID=4

echo "restarting processes by pm2..."

pm2 restart $BE_PM2_ID $FE_PM2_ID

pm2 save

echo "processes were restarted by pm2"