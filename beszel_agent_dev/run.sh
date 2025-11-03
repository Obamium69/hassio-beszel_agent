#!/usr/bin/with-contenv bashio

KEY="$(bashio::config 'key')"
HUB_URL="$(bashio::config 'hub_url')"
TOKEN="$(bashio::config 'token')"

export HUB_URL
export TOKEN

echo "[INFO] HUB_URL: $HUB_URL"
smartctl --all /dev/sda || true

# Set vars dynamically
if bashio::config.has_value 'environment_vars'; then
    index=0
    while bashio::config.exists "environment_vars[$index]"; do
        NAME=$(bashio::config "environment_vars[$index].name")
        VALUE=$(bashio::config "environment_vars[$index].value")
        
        if [[ -n "$NAME" && -n "$VALUE" ]]; then
            export "$NAME"="$VALUE"

        fi
        
        index=$((index + 1))
    done
fi

/usr/local/bin/agent -key "$KEY"
