#@IgnoreInspection BashAddShebang

chown -R wildfly:wildfly /opt/wildfly
chmod +x /opt/wildfly/bin/*.sh

# Start and enable
[ -x /bin/systemctl ] && (sudo systemctl daemon-reload || :)
[ -x /bin/systemctl ] && (sudo systemctl start wildfly || :) || (sudo service wildfly start || :)
[ -x /bin/systemctl ] && (sudo systemctl enable wildfly || :) || (sudo service wildfly enable || :)

