#!/bin/bash
cd {{ .product.basedir }}
bin/mysqld --initialize-insecure
bin/mysqld

