# yamllint

[![CircleCI](https://circleci.com/gh/tmknom/yamllint.svg?style=svg)](https://circleci.com/gh/tmknom/yamllint)
[![Docker Build Status](https://img.shields.io/docker/build/tmknom/yamllint.svg)](https://hub.docker.com/r/tmknom/yamllint/builds/)
[![Docker Automated build](https://img.shields.io/docker/automated/tmknom/yamllint.svg)](https://hub.docker.com/r/tmknom/yamllint/)
[![MicroBadger Size](https://img.shields.io/microbadger/image-size/tmknom/yamllint.svg)](https://microbadger.com/images/tmknom/yamllint)
[![MicroBadger Layers](https://img.shields.io/microbadger/layers/tmknom/yamllint.svg)](https://microbadger.com/images/tmknom/yamllint)
[![License](https://img.shields.io/github/license/tmknom/yamllint.svg)](https://opensource.org/licenses/Apache-2.0)

Dockerfile template.

## Requirements

- [Docker](https://www.docker.com/)

## Usage

```sh
curl -fsSL https://raw.githubusercontent.com/tmknom/yamllint/master/install | sh -s example
cd example
```

## Makefile targets

```text
build                          Build docker image
format                         Format code
help                           Show help
install                        Install requirements
lint                           Lint code
```

## Development

### Installation

```shell
git clone git@github.com:tmknom/yamllint.git
cd yamllint
make install
```

### Deployment

Automatically deployed by "[DockerHub Automated Build](https://docs.docker.com/docker-hub/builds/)" after merge.

### Deployment Pipeline

1. GitHub - Version Control System
   - <https://github.com/tmknom/yamllint>
2. CircleCI - Continuous Integration
   - <https://circleci.com/gh/tmknom/yamllint>
3. Docker Hub - Docker Registry
   - <https://hub.docker.com/r/tmknom/yamllint>
4. MicroBadger - Docker Inspection
   - <https://microbadger.com/images/tmknom/yamllint>

## License

Apache 2 Licensed. See LICENSE for full details.
