#@IgnoreInspection BashAddShebang

chmod +x /etc/wildfly/*.sh

# remove all Windows end of line symbols
sed -i 's/\r//g' /etc/wildfly/*.*
sed -i 's/\r//g' /etc/systemd/system/wildfly.service

# Start and enable service
[ -x /bin/systemctl ] && (sudo systemctl daemon-reload || :)
[ -x /bin/systemctl ] && (sudo systemctl start wildfly || :) || (sudo service wildfly start || :)
[ -x /bin/systemctl ] && (sudo systemctl enable wildfly || :) || (sudo service wildfly enable || :)