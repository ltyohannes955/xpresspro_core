FROM ruby:3.2.2

RUN apt-get update && apt-get install -y postgresql-client nodejs
RUN mkdir /app

WORKDIR /app

COPY . /app

RUN rm ./Gemfile.lock
RUN bundle install
# RUN rails db:drop

RUN rails db:migrate RAILS_ENV=development
RUN rails db:seed
EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
