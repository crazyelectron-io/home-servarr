#!/bin/bash

# encrypt Bazarr configuration file (first time)
if [ ! -f ./config/bazarr/config.sops.yaml ]; then
  sops -e ./config/bazarr/config.yaml > ./config/bazarr/config.sops.yaml
  rm ./config/bazarr/config.yaml
fi

# encrypt Lidarr configuration file (first time)
if [ ! -f ./config/lidarr/config.sops.xml ]; then
  sops -e --input-type binary ./config/lidarr/config.xml > ./config/lidarr/config.sops.xml
  rm ./config/lidarr/config.xml
fi

# encrypt Radarr configuration file (first time)
if [ ! -f ./config/radarr/config.sops.xml ]; then
  sops -e --input-type binary ./config/radarr/config.xml > ./config/radarr/config.sops.xml
  rm ./config/radarr/config.xml
fi

# encrypt Readarr configuration file (first time)
if [ ! -f ./config/readarr/config.sops.xml ]; then
  sops -e --input-type binary ./config/readarr/config.xml > ./config/readarr/config.sops.xml
  rm ./config/readarr/config.xml
fi

# encrypt Sonarr configuration file (first time)
if [ ! -f ./config/sonarr/config.sops.xml ]; then
  sops -e --input-type binary ./config/sonarr/config.xml > ./config/sonarr/config.sops.xml
  rm ./config/sonarr/config.xml
fi
