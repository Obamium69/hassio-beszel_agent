#!/usr/bin/with-contenv bashio

KEY="$(bashio::config 'key')"
 ./usr/local/bin/agent -key "$KEY"