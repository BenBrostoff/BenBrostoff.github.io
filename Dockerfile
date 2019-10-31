FROM ubuntu
MAINTAINER Ben Brostoff

RUN apt-get update
RUN apt-get -y install build-essential zlib1g-dev ruby-dev ruby nodejs \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/

RUN gem install bundler
RUN gem install github-pages

VOLUME /site

EXPOSE 35729
EXPOSE 4000

WORKDIR /site

ENTRYPOINT ["jekyll"]