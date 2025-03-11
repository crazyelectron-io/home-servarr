#1/bin/bash

# decrypt Bazarr configuration file
sops -d /config/config.sops.yaml > config.yaml