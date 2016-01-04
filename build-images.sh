#!/bin/bash
docker build -t nci_fastest/base base-image
docker build -t nci_fastest/grid grid-image
docker build -t nci_fastest/node node-image
docker build -t nci_fastest/jenkins jenkins

