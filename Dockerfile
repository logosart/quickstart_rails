FROM ruby:2.7.3

WORKDIR /app

#instalando bundle
RUN gem install bundler

#instalando node
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - 
RUN apt-get update && apt-get install -y nodejs apt-utils

#atualizando node
RUN npm update -g

#instalando yarn
RUN npm install yarn --global

CMD exec docker-compose/start.sh
