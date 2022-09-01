# syntax=docker/dockerfile:1
FROM ruby:3.1.2-slim-bullseye AS plant-ui

ENV INSTALL_PATH=/opt/app REPO=git@github.com:kamalasaurus/plant-ui.git
RUN mkdir -p $INSTALL_PATH
RUN apt-get -y update
RUN apt-get -y install git

WORKDIR $INSTALL_PATH

RUN git clone $REPO
# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1
RUN bundle install

CMD ["rails server &"] 
