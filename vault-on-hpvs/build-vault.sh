#!/bin/sh
  
# Remount /tmp/ to be able to build in it
mount -i -o remount,exec /tmp/
  
# Clone the vault repository
rm -rf vault
git clone https://github.com/hashicorp/vault.git
  
# Build vault binary
cd vault
make bootstrap
make dev
