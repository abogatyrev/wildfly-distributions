#@IgnoreInspection BashAddShebang

# Stop service if it exists (old version f.e)
[ -x /bin/systemctl ] && (sudo systemctl stop wildfly || :) || (sudo service wildfly stop || :)

# Create a wildfly user
groupadd -r wildfly
useradd -r -g wildfly -d /opt/wildfly -s /sbin/nologin wildfly
