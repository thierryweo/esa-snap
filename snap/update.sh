#!/bin/sh

## From here https://senbox.atlassian.net/wiki/spaces/SNAP/pages/30539785/Update+SNAP+from+the+command+line

/usr/local/snap/bin/snap --nosplash --nogui --modules --update-all 2>&1 | while read -r line; do
    echo "$line"
    if [ "$line" = "updates=0" ]
    then
      echo "Ok"
      sleep 2
      echo "Stopping Now"
      pkill -TERM -f java
    fi
done

## Install Additional modules here
# /usr/local/snap/bin/snap --nosplash --nogui --modules --install org.esa.s3tbx.s3tbx.sentinel3.reader org.esa.s3tbx.s3tbx.kit 2>&1 | while read -r line; do
#     echo "$line"
#     if [ "$line" = "Cannot install. No match for [org.esa.s3tbx.s3tbx.sentinel3.reader, org.esa.s3tbx.s3tbx.kit]." ]
#     then
#       echo "Ok"
#       sleep 2
#       echo "Stopping Now"
#       pkill -TERM -f java
#     fi
# done


 