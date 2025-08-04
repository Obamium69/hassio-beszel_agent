#!/usr/bin/with-contenv bashio

KEY="$(bashio::config 'key')"
HUB_URL="$(bashio::config 'hub_url')"
TOKEN="$(bashio::config 'token')"

export HUB_URL
export TOKEN

echo "[INFO] HUB_URL: $HUB_URL"

/usr/local/bin/agent -key "$KEY"
