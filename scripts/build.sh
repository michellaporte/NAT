HOST=104.155.81.36
#gcloud compute instances list --format="value(selfLink.basename())"
#--filter="name:datalake-stage-'*'"
#gcloud compute ssh "${HOST_INSTANCE}" --strict-host-key-checking=no --zone europe-west1-c --command "touch /home/michel.laporte/\"${SHIT}\""
for i in $(gcloud compute instances list --format="value(selfLink.basename())")
do
gcloud compute ssh ${i} --strict-host-key-checking=no --zone europe-west1-c --command "touch /home/michel.laporte/\"${SHIT}\""
done