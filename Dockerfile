FROM python:3.7.0-alpine3.8

# Build-time metadata as defined at http://label-schema.org
ARG BUILD_DATE
ARG VCS_REF
ARG VERSION
ARG REPO_NAME
LABEL org.label-schema.vendor="tmknom" \
      org.label-schema.name=$REPO_NAME \
      org.label-schema.description="A linter for YAML files." \
      org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.version=$VERSION \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/$REPO_NAME" \
      org.label-schema.usage="https://github.com/$REPO_NAME/blob/master/README.md#usage" \
      org.label-schema.docker.cmd="docker run --rm  -v \$PWD:/work $REPO_NAME foo.yml" \
      org.label-schema.schema-version="1.0"

ARG MODULE_VERSION=1.11.1

RUN pip install --no-cache-dir yamllint==${MODULE_VERSION}

WORKDIR /work
ENTRYPOINT ["/usr/local/bin/yamllint"]
CMD ["--help"]
