# ipt-docker

This dockerized GBIF IPT has been configured for test mode to support working with sampling event data Darwin Core Archive files out-of-the-box. For this purpose it bundles some configuration settings and skips the interactive questions that are otherwise asked by the IPT on initial startup. The specific configuration files that are bundled includes pre-installed `.extensions` for Darwin Core MeasurementOrFacts and extended Darwin Core MeasurementOrFacts.... 

It also pre-installs a user for testing purposes - so log in with login `john.doe@hotmail.com` and pass `admin`.

## Quickstart

Use the `Makefile` and issue `make up` to bring up the system.

It uses the `docker-compose.yml` - see details there.

