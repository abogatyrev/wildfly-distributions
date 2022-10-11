#@IgnoreInspection BashAddShebang

chmod +x /opt/wildfly/bin/*.sh

# remove all Windows end of line symbols
sed -i 's/\r//g' /opt/wildfly/bin/*.sh
sed -i 's/\r//g' /opt/wildfly/bin/*.conf
sed -i 's/\r//g' /opt/wildfly/bin/*.xml