#!/bin/sh

curl -s https://packagecloud.io/install/repositories/varnishcache/varnish75/script.deb.sh | sudo bash
sudo apt-get install varnish varnish-dev

