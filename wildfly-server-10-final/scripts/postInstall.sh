#@IgnoreInspection BashAddShebang

chown -R wildfly:wildfly /opt/wildfly
chown -R wildfly:wildfly /opt/wildfly/
chmod +x /opt/wildfly/bin/*.sh

# create 'wildfly' user
groupadd -r wildfly
useradd -r -g wildfly -d /opt/wildfly -s /sbin/nologin wildfly

# Start and enable
[ -x /bin/systemctl ] && (systemctl start wildfly || :) || (service wildfly start || :)
[ -x /bin/systemctl ] && (systemctl enable wildfly || :) || (service wildfly enable || :)
