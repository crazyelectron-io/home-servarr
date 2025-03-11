#1/bin/bash

SOPS_AGE_KEY_FILE=/root/.config/sops/age/keys.txt

# decrypt Bazarr configuration file
sops -d ./config/bazarr/config.sops.yaml > ./config/bazarr/config.yaml

# Decrypt Lidarr configuration file
sops -d --output-type binary ./config/lidarr/config.sops.xml > ./config/lidarr/config.xml

# Decrypt Prowlarr configuration file
sops -d --output-type binary ./config/prowlarr/config.sops.xml > ./config/prowlarr/config.xml

# Decrypt Radarr configuration file
sops -d --output-type binary ./config/radarr/config.sops.xml > ./config/radarr/config.xml

# Decrypt Readarr configuration file
sops -d --output-type binary ./config/readarr/config.sops.xml > ./config/readarr/config.xml

# Decrypt Sonarr configuration file
sops -d --output-type binary ./config/sonarr/config.sops.xml > ./config/sonarr/config.xml
