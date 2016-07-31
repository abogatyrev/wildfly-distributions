#@IgnoreInspection BashAddShebang

chown -R wildfly:wildfly /opt/wildfly
chown -R wildfly:wildfly /opt/wildfly/
chmod +x /opt/wildfly/bin/*.sh

# create 'wildfly' user
groupadd -r wildfly
useradd -r -g wildfly -d /opt/wildfly -s /sbin/nologin wildfly

# Start and enable
[ -x /bin/systemctl ] && (sudo systemctl daemon-reload || :)
[ -x /bin/systemctl ] && (sudo systemctl start wildfly || :) || (sudo service wildfly start || :)
[ -x /bin/systemctl ] && (sudo systemctl enable wildfly || :) || (sudo service wildfly enable || :)

