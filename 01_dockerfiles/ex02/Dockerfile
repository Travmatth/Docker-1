FROM ruby
RUN apt-get update -y && \
	apt-get upgrade -y && \
	apt-get install -y nodejs && \
	gem install rails bundler

ONBUILD WORKDIR /opt
ONBUILD RUN rails new app
ONBUILD WORKDIR /opt/app
ONBUILD RUN bundle install
ONBUILD RUN rails generate migration CreateProducts name:string
ONBUILD RUN rake db:migrate
#docker build -t ft-rails:on-build .
