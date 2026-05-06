#!/bin/bash
docker build -t react-app .
docker tag react-app saran0702/dev:latest
docker push saran0702/dev:latest
