#!/bin/sh

set -e

echo GITHUB_WORKSPACE=$GITHUB_WORKSPACE
echo SOURCE_ROOT=$2

if ! cd "${2:-.}"; then
  echo "Source root not found." >&2
  exit 1
fi

export NODE_ENV=development

npm i --development

GITHUB_TOKEN="${GITHUB_TOKEN:-${1:-.}}" SOURCE_ROOT=${2:-.} node /app/lib/run.js
