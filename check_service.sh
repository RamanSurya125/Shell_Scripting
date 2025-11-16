#!/bin/bash

URL="http://localhost:8000/health"

#microservice health checker 
STATUS=$(curl -o /dev/null -s -w "%{http_code}" %URL)

if [ "$STATUS" -eq 200 ]; then
	echo "Service is Up."
else 
	echo "Service is DOWN. Status Code: %STATUS"
fi 

