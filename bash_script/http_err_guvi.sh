#!/bin/bash

# Task 1: Check HTTP response code for guvi.in
url="https://guvi.in"
http_code=$(curl -o /dev/null -s -w "%{http_code}" "$url")

# Print the HTTP code
echo "HTTP Response Code for $url: $http_code"

# Determine success or failure
if [[ "$http_code" -ge 200 && "$http_code" -lt 300 ]]; then
    echo "Success: HTTP request was successful."
elif [[ "$http_code" -ge 400 && "$http_code" -lt 600 ]]; then
    echo "Failure: HTTP request failed with code $http_code."
else
    echo "Unknown: HTTP response code $http_code does not indicate success or failure."
fi
