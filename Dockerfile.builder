FROM gcr.io/cloud-builders/gcloud

# install python
RUN apt-get update && apt-get install python python-pip -y

# install docker (from the base docker step https://github.com/GoogleCloudPlatform/cloud-builders/blob/master/docker/Dockerfile-1.12.6)
RUN \
   apt-get -y update && \
   apt-get -y install apt-transport-https ca-certificates curl \
   software-properties-common python-software-properties && \
   apt-get -y update

# update gclod and get kubectl

ENTRYPOINT ["/bin/sh", "-c"]