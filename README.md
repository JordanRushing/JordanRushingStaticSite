# roda-sequel-puma-heroku-app
###Introduction
This project was created to explore the [Roda](https://github.com/jeremyevans/roda) | [Puma](https://github.com/puma/puma) | [TravisCI](https://travis-ci.org/) | [Heroku](https://dashboard.heroku.com/login) stack for creating version-controlled, continuously integrated and deployed, simple, performant, and fun open-source web applications.
###Required
* Ruby version and gem requirements are specified in ```Gemfile```
* [Heroku CLI](https://devcenter.heroku.com/articles/heroku-cli)
###Instructions
####Local Deployment
1. Clone the repo ```git clone https://github.com/JordanRushing/roda-sequel-puma-heroku-app.git```
2. From the root project directory: ```gem install bundler```
3. Install puma ```gem install puma -- --with-opt-dir=c:\openssl```
3. ```bundle install```
4. ```puma config.ru```
####CD with Heroku and TravisCI
1. Install [Heroku cli](https://devcenter.heroku.com/articles/heroku-cli) 
2. ```heroku login```
3. Clone the repo ```git clone https://github.com/JordanRushing/roda-sequel-puma-heroku-app.git```
4. From the project root: ```heroku create```
5. ```git push heroku master```
6. Navigate to the provided URL to access the application
7. Enable a pipeline for continuous deployment through heroku web interface at https://www.heroku.com
8. Navigate to https://travis-ci.org and link your new repo to enable CI
