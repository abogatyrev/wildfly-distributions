#@IgnoreInspection BashAddShebang
echo "Configuring MariaDB driver by CLI..."
/opt/wildfly/bin/jboss-cli.sh '--file=/tmp/mariadb-driver/cli/configure-mariadb-driver.cli'