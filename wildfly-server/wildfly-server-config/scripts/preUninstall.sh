#@IgnoreInspection BashAddShebang

# stop and disable service
[ -x /bin/systemctl ] && (sudo systemctl stop wildfly || :) || (sudo service wildfly stop || :)
[ -x /bin/systemctl ] && (sudo systemctl disable wildfly || :) || (sudo service wildfly disable || :)
