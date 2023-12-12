#!/bin/bash

echo "initializing processes to pm2..."

cd ..

cd server
pm2 start yarn --name student-rating-BE -- run dev

cd ../client
export DANGEROUSLY_DISABLE_HOST_CHECK=true # host port
pm2 start yarn --name student-rating-FE -- run start

pm2 save

echo "pm2 was initialized, do not forget to change BE_ID and FE_ID in another scripts"
