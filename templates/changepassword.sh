#!/bin/bash -e

cat > /tmp/changepassword.sql << EOF
ALTER USER 'root'@'localhost' IDENTIFIED BY '{{ .product.rootpassword }}';
EOF
mysql -u root --skip-password < /tmp/changepassword.sql
rm /tmp/changepassword.sql