#@IgnoreInspection BashAddShebang

# If rpm is updating NEED to remove old config firstly
# see: https://docs-old.fedoraproject.org/en-US/Fedora_Draft_Documentation/0.1/html/RPM_Guide/ch09s04s05.html
if [ "$1" -gt 1 ] ; then
echo "Remove old PostgreSQL driver by CLI..."
/opt/wildfly/bin/jboss-cli.sh '--file=/tmp/postgresql-driver/cli/remove-postgresql-driver.cli'
fi

echo "Configuring PostgreSQL driver by CLI..."
/opt/wildfly/bin/jboss-cli.sh '--file=/tmp/postgresql-driver/cli/configure-postgresql-driver.cli'