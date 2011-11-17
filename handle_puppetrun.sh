#!/bin/sh
# On a critical/hard or the third critical/soft, fire off puppetrun.
HOME=/var/log/nagios
export HOME
HOST=$3
case "$1" in
"CRITICAL")
  case "$2" in
  "SOFT")
    case "$4" in
    "3")
      sudo /usr/sbin/puppetrun -a --host $HOST
      ;;
    esac
    ;;
  "HARD")
    sudo /usr/sbin/puppetrun -a --host $HOST
    ;;
  esac
  ;;
esac
exit 0
