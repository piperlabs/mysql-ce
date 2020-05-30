#!/bin/bash -e

pidfile="{{ .product.pid }}"
if [ ! -f "$pidfile" ]
then
  bin/mysqld
fi