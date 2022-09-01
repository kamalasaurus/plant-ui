# Plant UI

Welcome!  This is the central seed inventory management system for the Bergelson Lab.  Currently being piloted for CompRgene project.  This document will tell you how to setup the project locally for development.

## Introduction

As you may have noted, this is a [Ruby on Rails](https://rubyonrails.org) project.  For the unfamiliar, Rails is an opinionated web development framework for the [Ruby](https://www.ruby-lang.org/en/) programming language that allows you to create transactional, database-oriented web applications with ease.  The motivation for this application was to create a UI that conveys the state of the seed inventory in an interactive and obvious manner.  No more munging spreadsheets and propagating typos!  The `/tubes` interface is the heart of this solution with its tactile representation of the <em>seed boxes</em> and their inventory state.

## Pull Down Docker Image

## Local Development

ruby version `3.1.0p0`

## Configuration

Feel free to use [direnv](https://direnv.net) to manage your environment on a per-project basis.  In lieu of that you may add the following to your `~/.zshrc` or `~/.bashrc` depending on which shell you're using:

`export PLANT_UI_DATABASE_PASSWORD="whatever-password-you-want"`

Be sure to use the same password you used to setup your local postgres installation.  If you are editing your `~/.zshrc` or `~/.bashrc`, be sure to `source ~/.zshrc` or `source ~/.bashrc` or to open a new shell window to initialize the environment variable.

## Database Setup

Install Postgres

```
$ rails db:create
$ rails db:migrate
$ rails db:seed
```

## Database Reset

`$ rails db:drop`

## Seeding The Database

Currently the database will be seeded with the csv located at `lib/assets/2022_08_23_all_seed_tubes.csv`, as you can intuit from the name of the file, it will insert the seed tube state of August 23, 2022.  If you want to reset the database with a new master list, simply create a new csv in the same directory with the same column schema with the name formatted as `yyyy_mm_dd_whatever_additional_words_you_want.csv`.  The `db:seed` script will grab the last file by sorted order, and the naming scheme proposed above will guarantee that the file you create will be in the correct order.

## Testing

`rails test`

## Deployment

NYU hosts its tenant web applications in an [Apptainer](https://apptainer.org) environment as specified in ...

Apptainer images are compatible with Docker images.  As a result, and given Docker's superior support for non-`x86`/`amd64` architectures (such as an `arm64` M1 Mac) this project exists in a docker container.

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
