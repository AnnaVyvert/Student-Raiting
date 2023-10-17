#!/bin/bash

echo "initializing processes to pm2..."

cd ..

cd server
pm2 start yarn --name student-rating-BE -- run dev

cd ../client
pm2 start yarn --name student-rating-FE -- run deploy:start

pm2 save

echo "pm2 was initialized, do not forget to change BE_ID and FE_ID in another scripts"