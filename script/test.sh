#!/bin/bash
npm ci && rake db:create db:structure:load test:prepare && RAILS_ENV=test RACK_ENV=test rake -v spec