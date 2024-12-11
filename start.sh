#!/bin/bash

if [ -z "$1" ]; then
    echo "No argument provided. Running 'docker-compose up -d'..."
    docker-compose up -d
    exit 0
fi

VALID_MODELS=("openlm" "openlm-chat" "openlm-score")

if [[ ! " ${VALID_MODELS[@]} " =~ " $1 " ]]; then
    echo "Error: Invalid argument '$1'. Allowed values are: ${VALID_MODELS[*]}"
    exit 1
fi

echo "Running 'docker-compose up confirm redis diun $1 -d'..."
docker-compose -f docker-compose.multimodel.yml up -d confirm redis diun "$1"