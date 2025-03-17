#!/bin/bash

export BLUEUTIL_ALLOW_ROOT=1
DEVICE_MAC="b8-27-eb-9d-cd-0a"
DELAY=10

while true; do
    if [[ $(blueutil --is-connected "$DEVICE_MAC") -eq 0 ]]; then
        echo "Device not connected. Reconnecting..."
        blueutil --connect "$DEVICE_MAC"
    else
        echo "Device is already connected."
    fi
    sleep $DELAY
done
