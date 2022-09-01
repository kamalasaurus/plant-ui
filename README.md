# Plant UI

Welcome!  This is the central seed inventory management system for the Bergelson Lab.  Currently being piloted for CompRgene project.  This document will tell you how to setup the project locally for development.

## Introduction

As you may have noted, this is a [Ruby on Rails](https://rubyonrails.org) project.  For the unfamiliar, Rails is an opinionated web development framework for the [Ruby](https://www.ruby-lang.org/en/) programming language that allows you to create transactional, database-oriented web applications with ease.  The motivation for this application was to create a UI that conveys the state of the seed inventory in an interactive and obvious manner.  No more munging spreadsheets and propagating typos!  The `/tubes` interface is the heart of this solution with its tactile representation of the <em>seed boxes</em> and their inventory state.

## Pull Down Docker Image

This is the easiest way to interact with the application since you don't have to do anything other than 

```
docker pull kamalasaurs/???
docker run ???
``` 

And all the dependencies and development requirements will be good to go.

## Configuration

Feel free to use [direnv](https://direnv.net) to manage your environment on a per-project basis.  In lieu of that you may add the following to your `~/.zshrc` or `~/.bashrc` depending on which shell you're using:

`export PLANT_UI_DATABASE_PASSWORD="whatever-password-you-want"`

Be sure to use the same password you used to setup your local postgres installation.  If you are editing your `~/.zshrc` or `~/.bashrc`, be sure to `source ~/.zshrc` or `source ~/.bashrc` or to open a new shell window to initialize the environment variable.

## Application Setup

I recommend using a version manager to install Ruby to avoid requests for `sudo` when it tries to create your [gems](https://rubygems.org) directory.  You can think of gems as a global module repository that doesn't require a virtual environment.  If you use a version manager like [asdf](https://asdf-vm.com), [rvm](https://rvm.io), or [rbenv](http://rbenv.org) they will automatically not attempt to locate your dependencies in a protected directory.  And, they will faciliate working in different projects with different ruby versions with ease.

Asdf requires the most configuration, so I would not recommend that if you're just getting started.  For the remainder of this section, I will assume you're using RVM--navigate to the RVM webpage and follow the first two commands (install gpg key, install rvm--not the version with rails included).  We are not using the command that installs stable rails on the assumption that between the writing of this document and the running of the script, the current stable version will have elapsed.  After doing so, complete the following command:

```
rvm install 3.1.0
```

To verify the installation was successful, you can run:

```
ruby --version
```

and expecto to see `3.1.0p0`


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
createuser -P -d plant-ui
... what else did I do?
```

```
$ rails db:create
$ rails db:migrate
$ rails db:seed
```

## Database Reset

`$ rails db:drop`

## Seeding The Database

Currently the database will be seeded with the csv located at `lib/assets/2022_08_23_all_seed_tubes.csv`, as you can intuit from the name of the file, it will insert the seed tube state of August 23, 2022.  If you want to reset the database with a new master list, simply create a new csv in the same directory with the same column schema with the name formatted as `yyyy_mm_dd_whatever_additional_words_you_want.csv`.  The `db:seed` script will grab the last file by sorted order, and the naming scheme proposed above will guarantee that the file you create will be in the correct order.

If the database is empty or `rails db:drop` is run before `rails db:seed`, then the csv will be equal the exact state of the database.  If, however there is pre-existing state in the database, only the relevant tubes listed in the csv will be updated to the new state and the previous tubes will remain as such.  It is recommended to do complete state resets with csv's in `lib/assets` and leave partial state updates to the web application, either via the bulk upload action or individual tube modification.

To extract the current state of the database, click the `Generate Csv` button on the `/tubes` interface.  Currently, the column names will not match the schema expected by the bulk upload action.

### Bulk Upload

Expects the same csv schema as `db:seed`, which is:

| seedbox | popid1 | popid2 | species | generation | accid | position | quantity_ml | quantity_seeds |

### Generate Csv

The schema here is different from the expectations of Bulk Upload.  It is:

| name | seedbox | position | population | accession |

It may be sensible to unify the schemas, or create another CSV generation task that will pull down the current state in the expected schema for easy reset.

## Testing

`rails test`

## Services

redis?  Will see if production requires that

## Deployment

NYU hosts its tenant web applications in an [Apptainer](https://apptainer.org) environment as specified in ...

Apptainer images are compatible with Docker images.  As a result, and given Docker's superior support for non-`x86`/`amd64` architectures (such as an `arm64` M1 Mac) this project exists in a docker container.
