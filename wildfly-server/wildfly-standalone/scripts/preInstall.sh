#@IgnoreInspection BashAddShebang

# Create a wildfly user
groupadd -r wildfly
useradd -r -g wildfly -d /opt/wildfly -s /sbin/nologin wildfly
