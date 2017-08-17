FROM ruby:alpine

RUN set -ex && ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && \
    apk add --no-cache .builddeps git make g++ libstdc++ mysql-dev && \
    gem install --no-rdoc rails -v 5.0.2 && \
    gem install --no-rdoc tzinfo-data puma mysql2 mongoid mqtt sidekiq sidekiq-cron carrierwave-aliyun rqrcode axlsx
