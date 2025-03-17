FROM ghcr.io/home-assistant/amd64-base:3.15


COPY config.yaml /tmp/config.yaml
COPY run.sh /

RUN export BESZEL_VERSION=$(grep '^version:' /tmp/config.yaml | awk '{print $2}' | tr -d '"') \
    && echo "Using Version: $BESZEL_VERSION" \
    && wget -q https://github.com/henrygd/beszel/releases/download/v${BESZEL_VERSION}/beszel-agent_linux_amd64.tar.gz \
    && tar -xzf beszel-agent_linux_amd64.tar.gz \
    && mv beszel-agent /usr/local/bin/agent \
    && chmod +x /usr/local/bin/agent \
    && chmod a+x /run.sh

CMD ["/run.sh"]