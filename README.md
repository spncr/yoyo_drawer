# README

## Why this project exists
This is a Ruby on Rails Project designed to inventory my yoyo collection for public display and organization.

After following a few basic tutorials, I wanted to solidify my fresh knowledge with an actual project.

My goal was to design, scope, build and deploy a full project on my own.

The basic requirements were met, developed solely by myself.

## How does it work?
Yoyos are the main concept in this app, which have a title, make + model, image, and a bool for accepting offers.

Modeling the data and their relationships was good practice.

Populating the model dropdown with the maker subsections took some tinkering.

[Sorcery](https://github.com/Sorcery/sorcery) is used for authentication. Right now, there are three states:
1) When no users exist, you are logged out and you can create the initial user
2) When logged in you can add, edit, destroy yoyos and edit, destroy users
3) Logged out but users exist, you can only log in

Action Storage uploads the images to an Amazon S3 bucket and PostgreSQL stores the data on Heroku.

Deploying to Heroku required me to migrate from mySQL (works from files) to PostgreSQL (which requires a service running).

## Left to do and next features
* Add the rest of my yoyos to the collection
* Add pagination to keep page loads reasonable when the yoyo grows
* `form_for` and `form_tag` have been soft deprecated, should be updated to `form_with`
* Comments shouldn't ask for email/name for logged in users
* Log the user in on initial creation
* Make and model creation could be in the same form as yoyo creation, so you don't have to load pages to add new models/makers
* A contact form to send me offers (and email service to deliver them to me)
* Galleries could be nice
* A lot more data could be gathered, like creation dates, status (sold, gave away, broken), tags, which would warrant some filtering for the homepage
* Styles could be polished further, for example: responsive thumbnail scaling, better readability on some screens, and forms that match the rest of the site
* More alerts, like when you try to submit a yoyo with a missing field or image
* Could be made to handle multiple collections, either for other users or types of collections just for me
* Streamline the local installation with a sample database and a setup script to import/build the environment in fewer steps

## To run this project locally

### Install dependencies
1. [Rbenv](https://github.com/rbenv/rbenv#installation) ([version 2.7.2](https://github.com/rbenv/rbenv#installing-ruby-versions) or later) manages the environment, ensuring the Ruby version matches the gemf
2. [Node.js](https://nodejs.org/en/download/) (Ruby on Rails dependency)
3. [Yarn](https://classic.yarnpkg.com/en/docs/install) (Ruby on Rails dependency)
4. [Ruby on Rails](https://guides.rubyonrails.org/getting_started.html#creating-a-new-rails-project-installing-rails) (version 5.2.3 is required)
5. [PostgreSQL](https://postgresapp.com/downloads.html) is the database, on Mac I use the [native app](https://postgresapp.com/)

### Run the project
1. Clone the project from Github `git clone git@github.com:spencerberry/yoyo_drawer.git` which downloads the entire app to your local machine
2. `cd yoyo_drawer` and then run `bundle install` to install all of the required gems (gems are libraries for ruby)
3. Start a fresh PostgreSQL database, which needs to be running for the app to fetch and store data
4. From the database, add a user for the app to use `CREATE USER yoyos WITH PASSWORD 'plzwork' CREATEDB CREATEROLE LOGIN SUPERUSER;` (this user matches the configuration in `yoyo_drawer/config/database.yml`)
7. Now you can run `rails db:create` to create the database and `rails db:migrate` to populate the models
8. Finally, you can call `rails server` to serve the app and visit the local route to see the app locally, in the development environment: [http://127.0.0.1:3000](http://127.0.0.1:3000)

Feedback encouraged!
