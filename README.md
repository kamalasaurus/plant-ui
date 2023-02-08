# Plant UI

Welcome!  This is the central seed inventory management system for the Bergelson Lab.  Currently being piloted for compRgene project.  This document will tell you how to setup the project locally for development.

## Entity Relationship Diagram

![Entity Relationship Diagram](erd.png)

## Introduction

As you may have noted, this is a [Ruby on Rails](https://rubyonrails.org) project.  For the unfamiliar, Rails is an opinionated web development framework for the [Ruby](https://www.ruby-lang.org/en/) programming language that allows you to create transactional, database-oriented web applications with ease.  The motivation for this application was to create a UI that conveys the state of the seed inventory in an interactive and obvious manner.  No more munging spreadsheets and propagating typos!  The `/tubes` interface is the heart of this solution with its tactile representation of the <em>seed boxes</em> and their inventory state.

## Pull Down Docker Image

This is the easiest way to interact with the application since you don't have to do anything other than 

```
docker pull kamalasaurs/???
docker run ???
``` 

And all the dependencies and development requirements will be good to go.

The general reasoning for the `docker-compose` arrangement can be found at this informative blogpost: [Dockerizing a Ruby on Rails Application](https://semaphoreci.com/community/tutorials/dockerizing-a-ruby-on-rails-application)

## Configuration

Feel free to use [direnv](https://direnv.net) to manage your environment on a per-project basis.  In lieu of that you may add the following to your `~/.zshrc` or `~/.bashrc` depending on which shell you're using:

```
export SECRET_TOKEN=<whatever your app comes with>

export WORKER_PROCESSES=1
export LISTEN_ON=0.0.0.0:3000
export DATABASE_URL=postgres://plant_ui:<password of choice>@postgres:5432/plant_ui?encoding=utf8&pool=5&timeout=5000
export CACHE_URL=redis://redis:6379/0
export JOB_WORKER_URL=redis://redis:6379/0
export PLANT_UI_DATABASE_PASSWORD=<password of choice>
```

Be sure to use the same password you used to setup your local postgres installation.  If you are editing your `~/.zshrc` or `~/.bashrc`, be sure to `source ~/.zshrc` or `source ~/.bashrc` or to open a new shell window to initialize the environment variable.

## Application Setup

I recommend using a version manager to install Ruby to avoid requests for `sudo` when it tries to create your [gems](https://rubygems.org) directory.  You can think of gems as a global module repository that doesn't require a virtual environment.  If you use a version manager like [asdf](https://asdf-vm.com), [rvm](https://rvm.io), or [rbenv](http://rbenv.org) they will automatically not attempt to locate your dependencies in a protected directory.  And, they will faciliate working in different projects with different ruby versions with ease.

Asdf requires the most configuration, so I would not recommend that if you're just getting started.  For the remainder of this section, I will assume you're using RVM--navigate to the RVM webpage and follow the first two commands (install gpg key, install rvm--not the version with rails included).  We are not using the command that installs stable rails on the assumption that between the writing of this document and the running of the script, the current stable version will have elapsed.  After doing so, complete the following command:

```
rvm install 3.1.2
```

To verify the installation was successful, you can run:

```
ruby --version
```

and expecto to see `3.1.2p20`


```
brew install git # or apt-get install for linux users
gem install bundler
git clone git@github.com:kamalasaurus/plant-ui.git
cd plant-ui
bundle install
```

## Database Setup

First install [postgresql](https://www.postgresql.org) and perform some rudimentary setup.

```
brew install postgresql
brew services start postgresql # start postgres server for mac -- for linux, there is documentation elsewhere
psql postgres
create user plant_ui with password 'password of your choice';
alter user plant_ui with superuser;
```

This may seem like a risky pattern, and it would be if we all shared passwords.  The user `plant_ui` will act as an agent on behalf of your rails application to drop, create, update, read tables of arbitrary description via ActiveRecord.  Since we don't have a devops team, we're a bit time-bound in maintaining parallel environments, so the local development path is adulterated with some requirements for Docker.

One final caveat since rails is communicating across the `postgresql` protocol as it would expect to in a Docker container is to map that to localhost (for local development).  You may do so via:

```
sudo -- sh -c -e "echo '127.0.0.1 postgres' >> /etc/hosts";
```

This is necessary due to some quirks of the Rails' server runtime not defaulting to localhost for general security reasons.

After this, you may actually create the database with the following commands:

```
rails db:create
rails db:migrate
rails db:seed
```

## Database Reset

```
rails db:drop
```

## Seeding The Database

Currently the database will be seeded with the csvs starting with dates located at `lib/assets/seed_tubes` in chronological order.  If you want to update the database with a new master list, simply create a new csv in the same directory with the same column schema with the name formatted as `yyyy_mm_dd_whatever_additional_words_you_want.csv`.  The `db:seed` script will grab the last file by sorted order, and the naming scheme proposed above will guarantee that the file you create will be in the correct order.

The database is updated via an `upsert` call to postgres.  This means the data will be either inserted or updated depending on whether it exists or not.  As a result, if the csvs uploaded over time are partial state updates, files must be run to recreate the present database state.  Also, direct manipulation of the database via the web app will not be reflected in the csvs.  To restore database state, you will need to use the conventional restoration pathway at ???

To extract the current state of the database, click the `Generate Csv` button on the `/tubes` interface with no query.  Currently, the column names will not match the schema expected by the bulk upload action.

### Bulk Upload

Expects the same csv schema as `db:seed`, which is:

seedbox | popid1 | popid2 | species | generation | accid | position | quantity_ml | quantity_seeds
--- | --- | --- | --- | --- | --- | --- | --- | --- |

### Generate Csv

The schema here is different from the expectations of Bulk Upload.  It is:

name | seedbox | position | population | accession
--- | --- | --- | --- | --- |

It may be sensible to unify the schemas, or create another CSV generation task that will pull down the current state in the expected schema for easy reset.

## Testing

`rails test`

## Services

redis?  Will see if production requires that

## Deployment

NYU hosts its tenant web applications in an [Apptainer](https://apptainer.org) environment as specified in ...

Apptainer images are compatible with Docker images.  As a result, and given Docker's superior support for non-`x86`/`amd64` architectures (such as an `arm64` M1 Mac) this project exists in a docker container.


### Database Upload

```
pg_dump -U plant_ui --no-owner --no-acl plant_ui_development > plant_ui_production.sql
```

upload to bucket at https://console.cloud.google.com/storage/browser/seed-inventory-manager-0f6a-bucket;tab=objects?forceOnBucketsSortingFiltering=false&project=seed-inventory-manager-0f6a&prefix=&forceOnObjectsSortingFiltering=false

import data at https://console.cloud.google.com/sql/instances/plant-ui/overview?project=seed-inventory-manager-0f6a&cloudshell=true


## Automated Entity Relationship Diagram

`rails create_erd`

This will create an updated entity relationship diagram if you ever add new models or relationships to the application.  It will also convert it to a png so it can be displayed in the README.  You have to install [ImageMagick](https://imagemagick.org/script/download.php) for the image conversion to work.
