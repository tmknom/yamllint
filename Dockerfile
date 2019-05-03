FROM alpine:3.9.3

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

ARG PYTHON_VERSION=3.6.6-r0
ARG MODULE_VERSION=1.11.1

# https://github.com/JoshuaRLi/alpine-python3-pip/blob/master/Dockerfile
RUN set -x && \
    apk add --no-cache python3=${PYTHON_VERSION} && \
    pip3 install --no-cache-dir yamllint==${MODULE_VERSION} && \
    find / -type d -name __pycache__ -exec rm -r {} + && \
    rm -r /usr/lib/python*/ensurepip && \
    rm -r /usr/lib/python*/lib2to3 && \
    rm -r /usr/lib/python*/turtledemo && \
    rm /usr/lib/python*/turtle.py && \
    rm /usr/lib/python*/webbrowser.py && \
    rm /usr/lib/python*/doctest.py && \
    rm /usr/lib/python*/pydoc.py

WORKDIR /work
ENTRYPOINT ["/usr/bin/yamllint"]
CMD ["--help"]
