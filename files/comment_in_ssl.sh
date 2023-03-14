#!/bin/bash

shopt -s nullglob

sed -i -r -z 's/#?; ?#//g; s/(server \{)\n    ssl off;/\1/g' /etc/nginx/nginx.conf /etc/nginx/sites-available/*.conf
