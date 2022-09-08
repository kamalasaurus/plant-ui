# syntax=docker/dockerfile:1
FROM ruby:3.1.2-bullseye AS plant-ui

ENV INSTALL_PATH=/opt/plant-ui REPO=https://github.com/kamalasaurus/plant-ui.git
RUN apt-get -y update
RUN apt-get -y install git
RUN cd /opt && git clone $REPO

WORKDIR $INSTALL_PATH

# pin bundler to the correct version
RUN gem install bundler -v '2.3.3'
RUN bundle _2.3.3_ install
# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1
RUN bundle install

CMD rails server -p 3000 -b '0.0.0.0' &
