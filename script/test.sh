#!/bin/bash
npm ci && rake db:create db:structure:load db:migrate && RAILS_ENV=test rake db:create db:structure:load test:prepare && RAILS_ENV=test rake spec