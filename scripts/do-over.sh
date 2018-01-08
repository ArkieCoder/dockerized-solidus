#!/bin/sh

sudo rm -rf pgdata
sudo rm -rf app
sudo rm -rf state
scripts/docker-murder -y
