#!/bin/bash

# encrypt Bazarr configuration file
sops -e ./config/bazarr/config.yaml > ./config/bazarr/config.sops.yaml
rm ./config/bazarr/config.yaml