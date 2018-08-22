#!/usr/bin/env bash
if [[ ${THYME_STATS} == "true" ]]; then
    echo "Evaluating data and creating statistic at /data/thyme.html"
    thyme show -i /data/thyme.json -w stats > /data/thyme.html
else
    echo "Starting to track your desktop activity :)"
    while true; do
        echo "......"
        thyme track -o /data/thyme.json
        sleep ${THYME_INTERVAL}
    done;
fi
