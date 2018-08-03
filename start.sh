#!/bin/bash

set -ex

exec supervisord -n -c /etc/supervisord.conf
