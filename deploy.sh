#!/bin/sh
for COMPONENT in hasher redis rng webui worker; do
  helm upgrade --install $COMPONENT . --values services/$COMPONENT.yaml
done
