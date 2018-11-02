#!/bin/bash
npm ci && rake db:create db:structure:load test:prepare && $( bundle exec rake -v spec )