#!/usr/bin/env bash

# Check npm installed or not

for app in "npm" \
	"yarn" \
	"yo@latest" \
	"eslint" \
	"webpack" \
	"webpack-cli" \
	"nodemon" \
	"pm2" \
	"typescript" \
	"create-react-app" \
	"create-react-native-app" \
	"@vue/cli" \
	"@angular/cli" \
	"now" \
	"netlify-cli" \
	"firebase-tools" \
	"heroku"; do
	npm i -g "${app}"
done
