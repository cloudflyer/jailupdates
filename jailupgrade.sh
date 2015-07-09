#!/bin/sh
jails=`jls | awk '{ print $1 }' | sed 1d`
for i in $jails; do
  echo "`jls -j $i | awk '{ print $3 }' | sed 1d`:"
  jexec -u root $i pkg upgrade -y
  echo ""
done
exit 0
