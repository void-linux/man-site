FROM ghcr.io/void-linux/void-linux:20210312rc01-mini-bb-x86_64-musl

COPY update.sh /usr/local/bin/update
RUN xbps-install -Sy xmandump mdocml && chmod +x /usr/local/bin/update
ENTRYPOINT ["/usr/local/bin/update"]
