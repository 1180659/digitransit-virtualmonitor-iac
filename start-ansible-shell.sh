#!/bin/bash
docker run -it --rm -v $(pwd):/etc/ansible:ro -e DEFAULT_SUBSCRIPTION=digitransit-virtualmonitor hsldevcom/azure-ansible /bin/bash
