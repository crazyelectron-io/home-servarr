#1/bin/bash

# decrypt Bazarr configuration file
sops -d ./config/bazarr/config.sops.yaml > ./config/bazarr/config.yaml