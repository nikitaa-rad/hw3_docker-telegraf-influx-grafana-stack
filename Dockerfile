FROM ruby:2.7.6

RUN apt-get update -qq && apt-get install -y \
  build-essential \
  libmariadb-dev-compat  \
  nodejs

RUN mkdir /app

WORKDIR /app

ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock

RUN bundle install

