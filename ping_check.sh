#!/bin/bash
# A simple script to check the ping

# Variables
TITLE=$0
HOST="$1"

# info
# Functions

function show-title() {
    echo "Executing the ${TITLE} script"
}

function execute-ping() {
    show-title
    ping ${HOST} -c 4
    RETURN_CODE=$?

    if [ "$RETURN_CODE" -ne "0" ]; then
        #echo "the ping was not successful. $HOST unreachable"
        exit 1
    else
        #echo "the ping was successful"
        exit 0
    fi
}

#show-title
execute-ping