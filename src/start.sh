#!/bin/sh

cp -a /root/config/* /etc/mysql/conf.d/
chmod 0444 /etc/mysql/conf.d/*.cnf
echo $MYSQL_ROOT_PASSWORD | mysql_config_editor set --login-path=root --host=localhost --user=root --password

/entrypoint.sh mysqld
