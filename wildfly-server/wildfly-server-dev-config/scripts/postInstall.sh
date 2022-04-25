#@IgnoreInspection BashAddShebang

chmod +x /etc/wildfly/*.sh

# remove all Windows end of line symbols
sed -i 's/\r//g' /etc/wildfly/*.*
sed -i 's/\r//g' /etc/systemd/system/wildfly.service

# If rpm is updating NEED to remove old config firstly
# see: https://docs-old.fedoraproject.org/en-US/Fedora_Draft_Documentation/0.1/html/RPM_Guide/ch09s04s05.html
if [ "$1" -gt 1 ] ; then
echo "Remove old Wildfly config by CLI..."
#sudo -u wildfly /opt/wildfly/bin/jboss-cli.sh '--file=/tmp/wildfly/cli/remove-config.cli'
/opt/wildfly/bin/jboss-cli.sh '--file=/tmp/wildfly/cli/remove-config.cli'
fi

echo "Configuring Wildfly by CLI..."
#sudo -u wildfly /opt/wildfly/bin/jboss-cli.sh '--file=/tmp/wildfly/cli/config.cli'
/opt/wildfly/bin/jboss-cli.sh '--file=/tmp/wildfly/cli/config.cli'

#sudo /opt/wildfly/bin/add-user.sh -u 'admin' -p 'qwerty' --silent
/opt/wildfly/bin/add-user.sh -u 'admin' -p 'qwerty' --silent

# Start and enable service
[ -x /bin/systemctl ] && (sudo systemctl daemon-reload || :)
[ -x /bin/systemctl ] && (sudo systemctl start wildfly || :) || (sudo service wildfly start || :)
[ -x /bin/systemctl ] && (sudo systemctl enable wildfly || :) || (sudo service wildfly enable || :)