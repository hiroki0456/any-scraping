FROM ruby:latest

ENV APP /app
RUN mkdir -p $APP
COPY . $APP/

WORKDIR $APP

RUN mkdir -p tmp/sockets && \
    mkdir -p /tmp/public && \
    cp -rf $APP/public/* /tmp/public

RUN bundle install

