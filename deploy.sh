#!/bin/bash
set -e
cd ./build
git init
git config user.name "Travis CI"
git config user.email "robot@health-samurai.io"
echo "fhir.ru" > CNAME
git add .
git commit -m "Deploy to GitHub Pages"
git push --force --quiet \
    git@github.com:HealthSamurai/fhir.ru.git \
    master:gh-pages
