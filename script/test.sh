#!/bin/bash
npm ci && rake db:create db:structure:load test:prepare && rspec --pattern spec/\*\*\{,/\*/\*\*\}/\*_spec.rb && npm run build && npx jest