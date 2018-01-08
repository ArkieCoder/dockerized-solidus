#!/bin/sh

cd /usr/src/app
echo "Solidus starting ... "
/bin/post_init.sh
rails server -b 0.0.0.0
