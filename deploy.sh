#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://themeticus.github.io
# git push -f git@github.com:themeticus/themeticus.github.io.git main

# if you are deploying to https://themeticus.github.io/<REPO>
git push -f git@github.com:themeticus/order-tracker-component-vue.git main:gh-pages

cd -