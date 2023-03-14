#!/bin/bash

shopt -s nullglob

sed -i -r 's/(listen .*443)/\1; #/g; s/(ssl_(certificate|certificate_key|trusted_certificate) )/#;#\1/g; s/(server \{)/\1\n    ssl off;/g' /etc/nginx/nginx.conf /etc/nginx/sites-available/*.conf
