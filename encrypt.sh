#!/bin/bash

# encrypt Bazarr configuration file (first time)
if [ ! -f ./config/bazarr/config.sops.yaml ]; then
  sops -e ./config/bazarr/config.yaml > ./config/bazarr/config.sops.yaml
  rm ./config/bazarr/config.yaml
fi

# encrypt Bazarr configuration file (first time)
if [ ! -f ./config/lidarr/config.sops.xml ]; then
  sops -e --input-type binary ./config/lidarr/config.xml > ./config/lidarr/config.sops.xml
  rm ./config/lidarr/config.xml
fi
