#@IgnoreInspection BashAddShebang

chown -R wildfly:wildfly /opt/wildfly
chmod +x /opt/wildfly/bin/*.sh

chmod 777 /opt/wildfly/standalone/deployments
chmod 777 /opt/wildfly/standalone/configuration/standalone_xml_history

# Start and enable
[ -x /bin/systemctl ] && (sudo systemctl daemon-reload || :)
[ -x /bin/systemctl ] && (sudo systemctl start wildfly || :) || (sudo service wildfly start || :)
[ -x /bin/systemctl ] && (sudo systemctl enable wildfly || :) || (sudo service wildfly enable || :)

