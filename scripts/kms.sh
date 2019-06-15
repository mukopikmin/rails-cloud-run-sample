#! /bin/sh

gcloud kms keyrings create cloud-run-sample \
  --location global
gcloud kms keys create production \
  --keyring cloud-run-sample \
  --location global \
  --purpose encryption
