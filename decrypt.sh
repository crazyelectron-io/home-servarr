#1/bin/bash

SOPS_AGE_KEY_FILE=/root/.config/sops/age/keys.txt

# decrypt Bazarr configuration file
sops -d ./config/bazarr/config.sops.yaml > ./config/bazarr/config.yaml

# Decrypt Lidarr configuration file
# ...