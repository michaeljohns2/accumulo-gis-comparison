# Running Geolife ingest with GeoWave
This is forked to use local Docker images.

```bash
## 1. download geolife
# internally it skips if data directory present
./geolife/get-data.sh

## 2. bring up the cluster (see comment in docker-compose.yml for first run)
docker-compose up

## 3. set up geowave
# can skip this step on subsequent runs if you previously ran step 4
./scripts/install-geowave.sh geowave

## 4. Option ::: commit container (see comment in docker-compose.yml)
docker commit accumulogiscomparison_geodocker-accumulo-master_1 local/geodocker-accumulo_master:geowave

## 5. carry out ingest
# may have to run `make clean` then `docker-compose up` to get this step
docker exec -it \
  accumulogiscomparison_geodocker-accumulo-master_1 \
  bash -c "/tmp/ingest.sh"

```

> NOTE: to take down the cluster, run `make clean-all`. This will
> destroy containers and delete their volumes. You should run with elevated permissions.

