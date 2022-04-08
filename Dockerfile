FROM ruby:3.1.1-alpine

RUN apk add --no-cache git

RUN apk --update add --virtual build_deps \
      build-base \
      ruby-dev \
      libc-dev \
      linux-headers \
      openssl-dev

WORKDIR /app

COPY Gemfile* ./

RUN bundle install --retry=3

COPY . .
