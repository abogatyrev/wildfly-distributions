_**TODO**_

need to add module path into $WILDFLY_HOME/bin/standalone.sh
change

```
if [ "x$JBOSS_MODULEPATH" = "x" ]; then
   JBOSS_MODULEPATH="$JBOSS_HOME/modules"
fi
```   

to

```
if [ "x$JBOSS_MODULEPATH" = "x" ]; then
    JBOSS_MODULEPATH="$JBOSS_HOME/modules:/opt/wildfly-modules"
fi
```