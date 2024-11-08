#!/usr/bin/env bash

set -eu -o pipefail

exec < /dev/tty

echo 'Validating CircleCI configuration ...'

if ! command -v circleci &>/dev/null; then
  >&2 echo 'circleci command not found. See https://github.com/CircleCI-Public/circleci-cli for installation instructions.'
  >&2 echo 'See https://github.com/CircleCI-Public/circleci-cli for installation instructions.'
  exit 1
fi

CIRCLECI_CLI_TELEMETRY_OPTOUT=true circleci config validate
