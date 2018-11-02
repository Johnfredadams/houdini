#!/bin/bash
(
echo $HOUDINI_WATCH
set -e
set -o pipefail
export DATABASE_URL=${BUILD_DATABASE_URL:-postgres://admin:password@db/commitchange_development}
echo $DATABASE_URL
npm ci && rake db:drop db:create db:structure:load test:prepare && npm run test
)