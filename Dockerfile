# syntax=docker/dockerfile:1.4

# Zentinel SPIFFE Agent Container Image
#
# Targets:
#   - prebuilt: For CI with pre-built binaries

################################################################################
# Pre-built binary stage (for CI builds)
################################################################################
FROM gcr.io/distroless/cc-debian12:nonroot AS prebuilt

COPY zentinel-spiffe-agent /zentinel-spiffe-agent

LABEL org.opencontainers.image.title="Zentinel SPIFFE Agent" \
      org.opencontainers.image.description="Zentinel SPIFFE Agent for Zentinel reverse proxy" \
      org.opencontainers.image.vendor="Raskell" \
      org.opencontainers.image.source="https://github.com/zentinelproxy/zentinel-agent-spiffe"

ENV RUST_LOG=info,zentinel_spiffe_agent=debug \
    SOCKET_PATH=/var/run/zentinel/spiffe.sock

USER nonroot:nonroot

ENTRYPOINT ["/zentinel-spiffe-agent"]
