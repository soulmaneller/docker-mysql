#!/bin/sh

echo "Copy config files"
cp -a /root/config/* /etc/mysql/conf.d/

echo "Chmod config files"
chmod 0444 /etc/mysql/conf.d/*.cnf

echo "Create a login path for root. password: ${MYSQL_ROOT_PASSWORD}"
echo $MYSQL_ROOT_PASSWORD | mysql_config_editor set --login-path=root --host=localhost --user=root --password

/entrypoint.sh mysqld
