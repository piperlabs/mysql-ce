#!/bin/bash -e
cd {{ .product.basedir }}

pid=`ps auxwww | grep "bin/mysqld" | grep -v grep | awk '{print $2}'`
if [[ -z "$pid" ]]; then
  bin/mysqld
fi