#!/bin/bash -e
cd {{ .product.basedir }}

pid=`ps auxwww | grep "bin/mysqld" | grep -v grep | awk '{print $2}'`
if [[ -n "$pid" ]]; then
  bin/mysqladmin shutdown -p{{ .product.rootpassword }}
fi