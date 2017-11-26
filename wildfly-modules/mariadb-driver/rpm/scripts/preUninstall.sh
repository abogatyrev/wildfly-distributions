#@IgnoreInspection BashAddShebang

# Remove configuration ONLY if yum is deleting last version of rpm
# see: https://docs-old.fedoraproject.org/en-US/Fedora_Draft_Documentation/0.1/html/RPM_Guide/ch09s04s05.html
if [ "$1" = 0 ] ; then
echo "Remove MariaDB driver by CLI..."
sudo /opt/wildfly/bin/jboss-cli.sh '--file=/tmp//mariadb-driver/cli/remove-mariadb-driver.cli'
fi