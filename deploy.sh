#!/bin/bash
set -e
cd ./build/
# touch ~/.ssh/travis_fhir_ru_deploy
cp ~/travis_fhir_ru ~/.ssh/travis_fhir_ru_deploy
chmod 600 ~/.ssh/travis_fhir_ru_deploy
echo -e "Host github.com\n  IdentityFile ~/.ssh/travis_fhir_ru_deploy" > ~/.ssh/config
git init
git remote add origin https://github.com/HealthSamurai/fhir.ru.git
git checkout -b gh-pages
git config user.name "Travis CI"
git config user.email "robot@health-samurai.io"
git add .
git commit -m "Deploy to GitHub Pages"
git push --force --quiet origin gh-pages
# git push --force --quiet "https://${GH_TOKEN}@${GH_REF}" master:gh-pages > /dev/null 2>&1