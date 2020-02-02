FROM ruby:2.7.0-slim

WORKDIR /app
COPY . /app

RUN bundle install

CMD bash
