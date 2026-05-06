#!/bin/bash
docker pull saran0702/dev:latest
docker stop react-container || true
docker rm react-container || true
docker run -d -p 80:80 --name react-container saran0702/dev:latest
