# yamllint

[![Dockerfile Actions Status](https://github.com/tmknom/yamllint/workflows/Dockerfile/badge.svg)](https://github.com/tmknom/yamllint/actions?query=workflow%3ADockerfile)
[![Shell Script Actions Status](https://github.com/tmknom/yamllint/workflows/Shell%20Script/badge.svg)](https://github.com/tmknom/yamllint/actions?query=workflow%3A%22Shell+Script%22)
[![Markdown Actions Status](https://github.com/tmknom/yamllint/workflows/Markdown/badge.svg)](https://github.com/tmknom/yamllint/actions?query=workflow%3AMarkdown)
[![YAML Actions Status](https://github.com/tmknom/yamllint/workflows/YAML/badge.svg)](https://github.com/tmknom/yamllint/actions?query=workflow%3AYAML)
[![JSON Actions Status](https://github.com/tmknom/yamllint/workflows/JSON/badge.svg)](https://github.com/tmknom/yamllint/actions?query=workflow%3AJSON)

[![Docker Build Status](https://img.shields.io/docker/cloud/build/tmknom/yamllint.svg)](https://hub.docker.com/r/tmknom/yamllint/builds/)
[![Docker Automated build](https://img.shields.io/docker/cloud/automated/tmknom/yamllint.svg)](https://hub.docker.com/r/tmknom/yamllint/)
[![MicroBadger Size](https://img.shields.io/microbadger/image-size/tmknom/yamllint.svg)](https://microbadger.com/images/tmknom/yamllint)
[![MicroBadger Layers](https://img.shields.io/microbadger/layers/tmknom/yamllint.svg)](https://microbadger.com/images/tmknom/yamllint)
[![License](https://img.shields.io/github/license/tmknom/yamllint.svg)](https://opensource.org/licenses/Apache-2.0)

A linter for YAML files based on Docker.

This is [yamllint](https://github.com/adrienverge/yamllint) wrapper.

## Requirements

- [Docker](https://www.docker.com/)

## Usage

### Lint a YAML file

```shell
docker run --rm -v "$PWD:/work" tmknom/yamllint foo.yml
```

### Lint all YAML files in a directory

```shell
docker run --rm -v "$PWD:/work" tmknom/yamllint .
```

### Help

```shell
docker run --rm tmknom/yamllint
```

## Makefile targets

```text
build                          Build docker image
format                         Format code
help                           Show help
install                        Install requirements
lint                           Lint code
release                        Release
```

## Development

### Installation

```shell
git clone git@github.com:tmknom/yamllint.git
cd yamllint
make install
```

### Deployment

1. Bump [VERSION](https://raw.githubusercontent.com/tmknom/yamllint/master/VERSION) file.
2. Run `make release`.
3. Automatically deployed by "[Docker Hub Automated Build](https://docs.docker.com/docker-hub/builds/)".

### Deployment Pipeline

1. GitHub - Version Control System
   - <https://github.com/tmknom/yamllint>
2. GitHub Actions - Continuous Integration
   - <https://github.com/tmknom/yamllint/actions>
3. Docker Hub - Docker Registry
   - <https://hub.docker.com/r/tmknom/yamllint>
4. MicroBadger - Docker Inspection
   - <https://microbadger.com/images/tmknom/yamllint>

## License

Apache 2 Licensed. See LICENSE for full details.
