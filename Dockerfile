FROM node:6-alpine

MAINTAINER Simon Erhardt <me+docker@rootlogin.ch>

ENV SLACK_CHANNEL=changeme \
  SLACK_TOKEN=changeme

ADD root /

RUN set -ex \
  && apk add --no-cache \
    tini \
  && npm install -g slackin \
  && chmod +x /usr/local/bin/docker-run.sh

EXPOSE 3000

ENTRYPOINT ["/sbin/tini","--"]
CMD /usr/local/bin/docker-run.sh
