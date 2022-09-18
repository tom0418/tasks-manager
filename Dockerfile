FROM t0m0418/ruby:3.0.2-bullseye

ENV APP_ROOT /app
WORKDIR $APP_ROOT

COPY ./Gemfile* $APP_ROOT/

RUN bundle config build.nokogiri --use-system-libraries
RUN bundle install --jobs=4
