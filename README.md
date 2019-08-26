# guacamole-webserver

Deploys nginx to act as a reverse proxy for guacamole-client https://bldr.habitat.sh/#/pkgs/devoptimist/guacamole-client/latest

## Maintainers

sbrown@chef.io

## Type of Package
Service

## Usage
Set user toml file with the required settings and load the service into a habitat supervisor

## Bindings
This makes use of the guacamole tomcat port and listen address provided by the guacamole-client habitat service. These settings are used to configure the location directive in the nginx config

```
hab svc load devoptimist/guacamole-webserver --bind guacamole:guacamole-client.default 
```

## Topologies

### Standalone

## Update Strategies

At once

### Configuration Updates

see default.toml for all configuration options

ssl is supported by supplying both a ssl certificate and key
to the configuration options
```
[ssl]
crt = "my crt"
key = "my key"
