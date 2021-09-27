#!/bin/sh

if [ ! -e '/workspace/electronic-approval-api' ]; then
  cd /workspace
  git clone https://github.com/ayataka0nk/electronic-approval-api.git
  cd electronic-approval-api
  cp /temp/api-env .env
  npm ci
  npm run migrate-dev
fi
