ARG BUILD_FROM
FROM $BUILD_FROM


COPY config.yaml /tmp/config.yaml
COPY run.sh /

RUN BESZEL_VERSION=$(awk -F': ' '/^version:/ {print $2}' /tmp/config.yaml | tr -d '"') && \
    echo "Using Version: $BESZEL_VERSION" && \
    ARCH=$(uname -m) && \
    case "$ARCH" in \
        x86_64) ARCH="amd64" ;; \
        armv7l) ARCH="arm" ;; \
        aarch64) ARCH="arm64" ;; \
        *) echo "Unsupported architecture: $ARCH" && exit 1 ;; \
    esac && \
    echo "Detected architecture: $ARCH" && \
    wget -q "https://github.com/henrygd/beszel/releases/download/v${BESZEL_VERSION}/beszel-agent_linux_${ARCH}.tar.gz" && \
    tar -xzf "beszel-agent_linux_${ARCH}.tar.gz" && \
    mv beszel-agent /usr/local/bin/agent && \
    chmod +x /usr/local/bin/agent && \
    chmod a+x /run.sh



CMD ["/run.sh"]