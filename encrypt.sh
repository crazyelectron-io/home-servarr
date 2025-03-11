#!/bin/bash

# encrypt Bazarr configuration file
sops -e /config/config.yaml > config.sops.yaml
rm /config/config.yaml