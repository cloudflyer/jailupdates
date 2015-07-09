#!/bin/sh
jails=`jls | awk '{ print $1 }' | sed 1d`
for i in $jails; do
  echo "******************************"
  echo "`jls -j $i | awk '{ print $3 }' | sed 1d`:"
  jexec -u root $i pkg update -q
  jexec -u root $i pkg upgrade -nq
  echo ""
done
exit 0
