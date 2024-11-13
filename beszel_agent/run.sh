#!/usr/bin/with-contenv bashio
export_config 'KEY'


KEY="$(bashio::config 'KEY')"
NICS="$(bashio::config 'NICS')"
./agent