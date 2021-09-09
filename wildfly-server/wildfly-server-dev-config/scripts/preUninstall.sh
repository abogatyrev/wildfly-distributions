#@IgnoreInspection BashAddShebang

echo "Remove old Wildfly config by CLI..."
sudo -u wildfly /opt/wildfly/bin/jboss-cli.sh '--file=/tmp/wildfly/cli/remove-config.cli'

# stop and disable service
[ -x /bin/systemctl ] && (sudo systemctl stop wildfly || :) || (sudo service wildfly stop || :)
[ -x /bin/systemctl ] && (sudo systemctl disable wildfly || :) || (sudo service wildfly disable || :)
