#@IgnoreInspection BashAddShebang
echo "Remove MariaDB driver by CLI..."
/opt/wildfly/bin/jboss-cli.sh '--file=/tmp//mariadb-driver/cli/remove-mariadb-driver.cli'