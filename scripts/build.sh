#! /bin/sh

set -ex 

image=rails-cloud-run-sample
project=$1
registry=gcr.io/$project

docker build -t $image .
docker tag $image $registry/$image
docker push $registry/$image
