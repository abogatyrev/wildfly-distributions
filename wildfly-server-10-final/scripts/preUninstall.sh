#@IgnoreInspection BashAddShebang

# stop and disable
[ -x /bin/systemctl ] && (systemctl stop wildfly || :) || (service wildfly stop || :)
[ -x /bin/systemctl ] && (systemctl disable wildfly || :) || (service wildfly disable || :)
