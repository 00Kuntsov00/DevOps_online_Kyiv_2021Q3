#!/bin/bash
echo
while [ -n "$1" ]
do
case "$1" in
-all) echo $(hostname) $(hostname -I);;
-target) echo $(netstat -tulpn | grep LISTEN) ;;
*) echo "$1 is not an option" ;;
esac
shift
done
