#@IgnoreInspection BashAddShebang

echo "Remove old Wildfly config by CLI..."
/opt/wildfly/bin/jboss-cli.sh '--file=/tmp/wildfly/cli/remove-config.cli'

# stop and disable service
[ -x /bin/systemctl ] && (systemctl stop wildfly || :) || (service wildfly stop || :)
[ -x /bin/systemctl ] && (systemctl disable wildfly || :) || (service wildfly disable || :)
[ -x /bin/systemctl ] && (systemctl daemon-reload || :)
