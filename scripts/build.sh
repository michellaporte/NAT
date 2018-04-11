HOST=104.155.81.36
#gcloud compute instances list --format="value(selfLink.basename())"
#gcloud compute ssh "${HOST_INSTANCE}" --strict-host-key-checking=no --zone europe-west1-c --command "touch /home/michel.laporte/\"${SHIT}\""
gcloud compute ssh $(gcloud compute instances list --format="value(selfLink.basename())") --strict-host-key-checking=no --zone europe-west1-c --command "touch /home/michel.laporte/\"${SHIT}\""