FROM ruby:2.3

RUN curl -sL https://deb.nodesource.com/setup_7.x | bash -
RUN apt-get install -y --no-install-recommends nodejs \
      && rm -rf /var/lib/apt/lists/*

RUN npm install -g bower

WORKDIR /usr/app/src
COPY src/Gemfile* ./
RUN bundle install
COPY src .

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
