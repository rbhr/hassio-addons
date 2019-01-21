#!/bin/bash

if [ ! -d /data/config ]
then
    echo "No C-Gate configuration found, using default"
    mkdir /data/config
    cp -r /cgate/key /data
else
    echo "Existing C-Gate configuration found"
fi

cp -r /cgate/key /data
cp -r /cgate/tag /data


cd /data
exec java -Xmx128m -jar /cgate/cgate.jar 
