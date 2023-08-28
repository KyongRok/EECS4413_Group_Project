#!/bin/bash
docker pull hppatel134/web-service:latest
docker run -p 8080:8080 hppatel134/web-service:latest
