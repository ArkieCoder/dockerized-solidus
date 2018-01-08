#!/bin/sh

sudo rm -rf pgdata
sudo rm -rf app
rm -rf state
scripts/docker-murder -y
