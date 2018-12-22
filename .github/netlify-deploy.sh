#!/bin/sh

docker-compose run npm run generate 
netlify deploy -s $NETLIFY_SITE_ID -t $NETLIFY_ACCESS_TOKEN -d ./dist $([ "$TRAVIS_BRANCH" = "master" ] && echo "-p" || echo "-b $TRAVIS_BRANCH")" --message "travis build $TRAVIS_BRANCH"
