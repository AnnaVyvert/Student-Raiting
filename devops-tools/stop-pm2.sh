#!/bin/bash

BE_PM2_ID=3
FE_PM2_ID=4

echo "stopping processes by pm2..."

pm2 stop $BE_PM2_ID $FE_PM2_ID

echo "scripts were stopped by pm2"