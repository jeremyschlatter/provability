# For reference, this is how our VM was provisioned.
gcloud compute instances create build-$(date +"%Y-%m-%d-%s") \
  --image container-vm-v20140929 \
  --image-project google-containers \
  --metadata-from-file google-container-manifest=containers.yaml \
  --tags http-server \
  --zone us-central1-a \
  --machine-type f1-micro
