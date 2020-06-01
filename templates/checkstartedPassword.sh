#!/bin/bash -e
cd {{ .product.basedir }}

bin/mysqladmin version -p{{ .product.rootpassword }}
