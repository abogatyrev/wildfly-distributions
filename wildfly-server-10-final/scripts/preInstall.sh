#@IgnoreInspection BashAddShebang
[ -x /bin/systemctl ] && (systemctl stop wildfly || :) || (service wildfly stop || :)
