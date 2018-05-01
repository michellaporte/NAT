#!/bin/bash -e
#Last Commit to Master
LAST_PARENT_COMMIT=$(git rev-parse origin/master)

detect_changed_services() {
 echo "----------------------------------------------"
 echo -e "detecting changed folders for this commit\n"
 sleep 1
}
 # get a list of all the changed folders only
 changed_folders=`git diff --name-only $LAST_PARENT_COMMIT | grep / | awk 'BEGIN {FS="/"} {print $1}' | uniq`
 echo "changed folders "$changed_folders

 function folder_check {
 for folder in $changed_folders
 do
   make "$folder"
 done
}
detect_changed_services
folder_check
 # Iterate on each service and run the packaging script
 # for service in $changed_services
 # do
 #   echo "-------------------Running packaging for $service---------------------"
 #   # copy the common code to the service so that it can be packaged in the docker image
 #   cp -r ./_global $service
 #   pushd "$service"
 #   # move the build script to the root of the service
 #   mv ./_global/package-service.sh ./.
 #   ./package-service.sh "$service"
 #   popd
 # done
