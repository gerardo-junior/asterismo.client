#!/bin/sh

cd $HOME
git clone --recurse-submodules --branch $TRAVIS_BRANCH https://github.com/gerardo-junior/asterismo.git
cd asterismo
git config user.email "bot@gerardo-junior.com"
git config user.name "Bot of Gerardo"
git submodule update --remote client
git add client
git commit -m "TRAVIS asterismo client #${TRAVIS_BUILD_NUMBER} - Updating submodule client on ${TRAVIS_BRANCH} branch"
git push --force --repo https://bot-of-gerardo:${GITHUB_BOT_AUTH_TOKEN}@github.com/gerardo-junior/asterismo
cd ../ 
rm -rf asterismo
