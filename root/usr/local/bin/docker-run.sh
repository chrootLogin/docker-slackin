#!/bin/bash

if [ "${SLACK_CHANEL}" == "changeme" ]; then
  echo "Please set SLACK_CHANNEL env variable."
  exit 1
fi

if [ "${SLACK_TOKEN}" == "changeme" ]; then
  echo "Please set SLACK_TOKEN env variable."
  exit 1
fi

slackin ${SLACK_CHANNEL} ${SLACK_TOKEN}
