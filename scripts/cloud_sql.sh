#! /bin/sh

instance=cloud-run-sample

gcloud sql instances create $instance \
  --region us-central1 \
  --assign-ip \
  --tier db-f1-micro \
  --root-password password

gcloud sql databases create sample \
  --instance $instance
