#! /bin/sh

set -ex

service=$1
image=$2
SECRET_KEY_BASE=`bundle exec rails secret`

gcloud beta run deploy $service \
  --image $image \
  --add-cloudsql-instances refrii-api \
  --allow-unauthenticated \
  --region us-central1 \
  --memory 512Mi \
  --set-env-vars " \
    RAILS_ENV=production, \
    RACK_ENV=production, \
    MYSQL_SOCKET=$MYSQL_SOCKET, \
    MYSQL_DATABASE=$MYSQL_DATABASE, \
    MYSQL_USERNAME=$MYSQL_USERNAME, \
    MYSQL_PASSWORD=$MYSQL_PASSWORD, \
    SECRET_KEY_BASE=$SECRET_KEY_BASE \
  "