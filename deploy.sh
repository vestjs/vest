#!/bin/bash
set -e # exit with nonzero exit code if anything fails

git config user.name "yarrharr_pirates"
git config user.email "octagonpentagonhexagon@gmail.com"

git checkout master
git add *
git commit -m "Update dist [ci skip], ye matey"

git push "https://${GITHUB_SECRET_TOKEN}@${GH_REF}" master > /dev/null 2>&1
