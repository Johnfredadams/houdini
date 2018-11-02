#!/bin/bash
npm ci && rake db:create db:structure:load test:prepare && $( ruby rake -v spec )