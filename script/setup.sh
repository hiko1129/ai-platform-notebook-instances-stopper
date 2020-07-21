echo "$SERVICE_ACCOUNT_KEY" | gcloud auth activate-service-account --key-file=-
gcloud --quiet config set project $PROJECT
gcloud --quiet config set compute/zone $ZONE
