#@IgnoreInspection BashAddShebang
[ -x /bin/systemctl ] && (sudo systemctl stop wildfly || :) || (sudo service wildfly stop || :)
