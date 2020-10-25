# README

This is a Ruby on Rails Project designed to inventory my yoyo collection for public display and organization.

## GOALS : DID I MEET them
## How does it work?
## Next features
* Add a new row for 'name' which exists in addition to 'model'

## Run this project locally

1. [Rails](https://guides.rubyonrails.org/getting_started.html) 5.2.3 is required, which has some prerequisites:
 * Ruby (2.7.2 or later)
 * Node.js
 * Yarn
2. [PostgreSQL](https://www.postgresql.org/download/) is also required, which is a Heroku requirement.
3. [Rbenv](https://github.com/rbenv/rbenv) manages the environment, to ensure you're running the proper version of Ruby.
4. Now you are ready to clone the project:
`git clone git@github.com:spencerberry/yoyo_drawer.git`
5. Bundler will install all the gems for you with `bundle install` (be sure to `cd` into the project first)
6. Next we need the database to be running, so we can create a new user for this app. `CREATE USER yoyos WITH PASSWORD 'plzwork' CREATEDB CREATEROLE LOGIN SUPERUSER;` is how the app is configured, but you should create your own username and password and set it in `yoyos/config/database.yml`
7. Once this user is working, you can `rails db:create` to create the databases themselves and `rails db:migrate` to fill them with the models.
8. You should now have all the dependencies installed and the migrated database running, so you can `rails server` and visit the local route to see the development app: [http://127.0.0.1:3000](http://127.0.0.1:3000)

Feedback encouraged!
