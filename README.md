# React Application Deployment – CI/CD Pipeline using Jenkins, Docker & AWS EC2

## Project Overview

This project demonstrates a complete CI/CD workflow for deploying a React application using Jenkins, Docker, Docker Hub, and AWS EC2.

The main focus of this project is on containerization, automated build pipelines, Docker image management, deployment automation, and monitoring setup rather than frontend development.

The application was dockerized, integrated with Jenkins multi-branch pipelines, pushed to Docker Hub repositories based on branch conditions, and deployed on an AWS EC2 instance in a production-style environment.

---

# Architecture

GitHub → Jenkins → Docker → Docker Hub → AWS EC2 → Monitoring Stack

---

# Technologies Used

* Jenkins
* Docker
* Docker Compose
* Git & GitHub
* AWS EC2
* Docker Hub
* Prometheus
* Grafana
* Bash Scripting
* Nginx

---

# Workflow

## 1. Source Code Management

* Application code pushed to GitHub using CLI-only git commands
* Separate `dev` and `master` branches maintained

## 2. Jenkins Pipeline Trigger

* GitHub webhook automatically triggers Jenkins pipeline
* Multi-branch pipeline detects branch changes automatically

## 3. Docker Image Build

* Jenkins builds Docker image using Dockerfile
* React application containerized using Nginx

## 4. Docker Hub Push Logic

* If code is pushed to `dev` branch:

  * Image pushed to public `dev` repository

* If `dev` branch is merged into `master`:

  * Image pushed to private `prod` repository

* Application exposed through Port 80 (HTTP)

## 6. Monitoring

* Prometheus used for monitoring
* Health monitoring configured for application status
* Alerting configured to send notifications only when the application goes down

---

# Docker Hub Repositories

## Dev Repository (Public)

* `saran0702/dev`

## Prod Repository (Private)

* `saran0702/prod`

---

# Docker Image Names

* Dev image: `saran0702/dev:latest`
* Prod image: `saran0702/prod:latest`

---

# Deployment Files

## Dockerfile

Used to containerize the React application using Nginx.

## docker-compose.yml

Used for container orchestration and deployment.

## build.sh

* Grafana dashboard configured for visualization
* Application deployed to AWS EC2 instance
# Piplineflow
Bash script for building Docker images.


## deploy.sh


Bash script for deploying containers to the server.

## Jenkinsfile

Defines CI/CD pipeline stages for build, push, and deployment.

---

# AWS Configuration

## EC2 Instance

* Instance Type: `t3.micro`
* OS: Ubuntu

## Security Group Rules

### Public Access

* HTTP Port 80 open to all:

  * `0.0.0.0/0`

### Restricted SSH Access

* SSH Port 22 restricted only to personal IP address:

  * My IP/32`

This ensures secure remote access while keeping the application publicly accessible.

---

# Monitoring Setup

## Prometheus

Configured to monitor application metrics and target health.

## Grafana

Used for dashboard visualization and monitoring insights.

## Alerting

* Grafana → Port 3000
* Prometheus → Port 9090
Configured to send notifications only when the application goes down (downtime alerting enabled).


* Node Exporter / Metrics → Port 9100
## Services Used



* Jenkins → Port 8080

---


# Challenges Faced


This project involved multiple debugging and troubleshooting scenarios during setup and pipeline integration.


## Key Challenges


* Dockerfile configuration issues

* Jenkins pipeline stage failures


During the process, the pipeline failed multiple times while identifying configuration and deployment issues. Each failure helped improve understanding of Jenkins workflows, Docker image handling, webhook automation, and deployment debugging.


---


# Outcome


* Fully working CI/CD pipeline
* Automated Docker image build and push

* Separate dev and prod deployment flow
* Successful Jenkins webhook automation

* Monitoring stack with downtime alerting configured successfully
* Application running on Port 80


---


# Submission Details


* **GitHub Repository:** `https://github.com/saran02-Git/Piplineflow/tree/main`
* **Deployed Site URL:** `http://43.205.230.7/`

* **Docker Image Names:** `saran0702/dev:latest` / `saran0702/prod:latest`
---


# Application Access


Application URL:


```bash

http://43.205.230.7/

```


---



# Conclusion


This project demonstrates hands-on experience in building a complete CI/CD pipeline using Jenkins, Docker, Docker Hub, and AWS EC2.


* Cloud deployment
It reflects practical exposure to:
* Monitoring and alerting integration
* Troubleshooting real deployment issues



* Docker containerization
* Jenkins automation
The project helped strengthen understanding of DevOps workflows, automation pipelines, deployment strategies, and production-style infrastructure setup.

* Branch-based CI/CD workflows



Screenshots are uploaded to the GitHub repository under the `screenshots/`
