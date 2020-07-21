regexp=$1
if [ "$regexp" = "" ]; then
  echo "cant't use empty string"
  exit 1
fi
gcloud compute instances list --filter="name~'${regexp}'" | awk 'NR>1{print $1}' | xargs -I{} gcloud compute instances stop --zone=${ZONE} {}
