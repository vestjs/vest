#!/bin/bash
set -e # exit with nonzero exit code if anything fails

git config user.name "Travis CI"
git config user.email "octagonpentagonhexagon@gmail.com"

git checkout master
git add index.js
git add index.min.js

git commit -m "Update dist [ci skip], ye matey."

git push "https://${GITHUB_SECRET_TOKEN}@${GH_REF}" master > /dev/null 2>&1
