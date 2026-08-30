# My VyOS home-lab networking config

![ansible-lint](https://github.com/g-bolmida/network-configuration/actions/workflows/ansible-lint.yml/badge.svg) ![yamllint](https://github.com/g-bolmida/network-configuration/actions/workflows/yamllint.yml/badge.svg)

This repo holds the ansible to configure my VyOS home router.

## Starting on a new computer

```bash
pre-commit install
```

## Starting from a fresh VyOS install

All that should be done manually.

```bash
set interfaces ethernet eth2 address 192.168.1.1/24
set service ssh port 2222
```

TODO:

- Local Domain 'george.local'
- ~~Hostname~~
- DNS Resolver - start with cloudflare, will migrate to external blocker
- DHCP for WAN IP
- DHCP for LAN - 192.168.1.100 - 192.168.1.199
- DHCP for IoT - 192.168.200.2 - 192.168.200.200
- ~~timeserver~~
- Need to add an IoT network (vLAN) with internet fully blocked - 192.168.200.1
- Homelab network
- Port forward for 32400 - Plex Server
- Static IPs:
  - 192.168.1.201 - prometheus
  - 192.168.1.202 - sulaco
- Local DNS records e.g. sulaco.george.local, prometheus.george.local
- Load balancing across k8s nodes
- ~~Prometheus exporter~~
- hwid error on interfaces
- look into vyos update strategy
