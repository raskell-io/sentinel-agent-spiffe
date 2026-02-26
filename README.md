# zentinel-agent-spiffe

SPIFFE/SPIRE workload identity agent for Zentinel reverse proxy.

## Installation

### Using Bundle (Recommended)

```bash
# Install just this agent
zentinel bundle install spiffe

# Or install all bundled agents
zentinel bundle install
```

The bundle command downloads the correct binary for your platform and places it in the standard location. See the [bundle documentation](https://zentinelproxy.io/docs/deployment/bundle/) for details.

### Using Cargo

```bash
cargo install zentinel-agent-spiffe
```

### From Source

```bash
git clone https://github.com/zentinelproxy/zentinel-agent-spiffe
cd zentinel-agent-spiffe
cargo build --release
```

## Documentation

See [zentinelproxy.io/docs/agents/spiffe](https://zentinelproxy.io/docs/agents/spiffe)

## License

Apache-2.0
