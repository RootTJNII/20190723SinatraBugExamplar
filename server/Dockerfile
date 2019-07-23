FROM ruby:2.6

COPY app/Gemfile app/Gemfile.lock /app/
WORKDIR /app
RUN bundle install

RUN useradd -m sinatra

COPY app/ /app

USER sinatra
