#!/usr/bin/with-contenv bashio
export_config 'KEY'


KEY="$(bashio::config 'KEY')"
./agent