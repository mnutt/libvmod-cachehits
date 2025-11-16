#!/bin/sh
CN=`lsb_release -cs`
cat changelog | sed -r "s/%CN%/~$CN-1/" | sed -r "s/%VVER%/varnish60/" | sed -r "s/%DIST%/$CN/" > varnish60/changelog
cat changelog | sed -r "s/%CN%/~$CN-1/" | sed -r "s/%VVER%/varnish77/" | sed -r "s/%DIST%/$CN/" > varnish77/changelog
cat changelog | sed -r "s/%CN%/~$CN-1/" | sed -r "s/%VVER%/varnish80/" | sed -r "s/%DIST%/$CN/" > varnish80/changelog
