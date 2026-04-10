#!/bin/bash
# Health Check Script
# DevOps Infrastructure Project
# Author: Balogun Ibrahim

SERVER_IP=$1
ALERT_EMAIL="balogunibrahim025@gmail.com"
LOG_FILE="/var/log/health-check.log"

echo "====================================="
echo "Health Check - $(date)"
echo "Server: $SERVER_IP"
echo "====================================="

# Check if server is reachable
ping -c 3 $SERVER_IP > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "✅ Server is reachable"
else
    echo "❌ Server is NOT reachable"
    exit 1
fi

# Check HTTP response
HTTP_STATUS=$(curl -s -o /dev/null -w "%{http_code}" http://$SERVER_IP)
if [ $HTTP_STATUS -eq 200 ]; then
    echo "✅ HTTP response: $HTTP_STATUS OK"
else
    echo "❌ HTTP response: $HTTP_STATUS - Website may be down"
fi

# Check response time
RESPONSE_TIME=$(curl -s -o /dev/null -w "%{time_total}" http://$SERVER_IP)
echo "⏱️  Response time: ${RESPONSE_TIME}s"

echo "====================================="
echo "Health check complete"
echo "====================================="
