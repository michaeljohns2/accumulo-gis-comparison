#!/bin/bash

NAMESPACE=$1

docker exec -it \
  accumulogiscomparison_geodocker-accumulo-master_1 \
  bash -c "/sbin/load-iterators.sh geowave ${NAMESPACE}"

