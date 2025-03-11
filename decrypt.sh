#1/bin/bash

SOPS_AGE_KEY_FILE=/root/.config/sops/age/keys.txt

# decrypt Bazarr configuration file
if [! -f ./config/bazarr/config.yaml ]; then
 sops -d ./config/bazarr/config.sops.yaml > ./config/bazarr/config.yaml
fi

# Decrypt Lidarr configuration file
# XML (binary) file not supported by VSCode extension
if [! -f ./config/lidarr/config.xml ]; then
  sops -d --output-type binary ./config/lidarr/config.sops.xml > ./config/lidarr/config.xml
fi
