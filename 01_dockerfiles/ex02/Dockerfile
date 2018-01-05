FROM ruby

RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install sqlite3
RUN apt-get -y install nodejs
RUN gem install rails

ONBUILD EXPOSE 3000
ONBUILD COPY . /opt/app
ONBUILD WORKDIR /opt/app
ONBUILD RUN bundle install

ONBUILD RUN rails db:migrate
ONBUILD RUN rails db:seed