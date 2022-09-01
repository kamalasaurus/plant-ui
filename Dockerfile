# syntax=docker/dockerfile:1
FROM ruby:3.1.2-slim-bullseye AS plant-ui

ENV INSTALL_PATH=/opt/plant-ui REPO=git@github.com:kamalasaurus/plant-ui.git
RUN apt-get -y update
RUN apt-get -y install git
RUN cd opt && git clone $REPO

WORKDIR $INSTALL_PATH

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1
RUN bundle install

CMD ["rails server &"] 