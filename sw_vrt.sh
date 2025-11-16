#!/bin/sh
SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd $SCRIPT_DIR
VARNISH_DIR="varnish$1"
if [ -d debian.vrt/$VARNISH_DIR ]; then
  ln -nfs debian.vrt/$VARNISH_DIR debian
else
  echo "Does not support varnish$1"
fi

