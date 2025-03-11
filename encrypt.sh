#!/bin/bash

# encrypt Bazarr configuration file
sops -e ./config/bazarr/config.yaml > ./config/bazarr/config.sops.yaml
rm ./config/bazarr/config.yaml

# encrypt Bazarr configuration file
sops -e --input-type binary ./config/lidarr/config.xml > ./config/lidarr/config.sops.xml
rm ./config/lidarr/config.xml
