#@IgnoreInspection BashAddShebang

chmod +x /etc/wildfly/*.sh

# remove all Windows end of line symbols
sed -i 's/\r//g' /etc/wildfly/*.*
sed -i 's/\r//g' /etc/systemd/system/wildfly.service

# Start and enable service
[ -x /bin/systemctl ] && (systemctl daemon-reload || :)
[ -x /bin/systemctl ] && (systemctl start wildfly || :) || (service wildfly start || :)
[ -x /bin/systemctl ] && (systemctl enable wildfly || :) || (service wildfly enable || :)
