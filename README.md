# Node.js CI/CD & DevSecOps

A practical **Node.js CI/CD project** demonstrating application containerization and automated deployment using **Jenkins and Docker**, with supporting configurations for testing, SonarQube, DevSecOps, and Terraform.

## Overview

This project uses a simple Node.js Todo application to demonstrate a basic CI/CD workflow.

```text
GitHub
   │
   ▼
Jenkins
   │
   ├── Clone Repository
   │
   ├── Build Docker Image
   │
   ├── Remove Previous Container
   │
   └── Run New Container
   │
   ▼
Docker
   │
   ▼
Node.js Application
```

The Jenkins pipeline automates the process of building and deploying the application in a Docker container.

---

## Technologies

* **Node.js** — Application runtime
* **Express.js** — Web application framework
* **Jenkins** — CI/CD automation
* **Docker** — Containerization
* **Docker Compose** — Container-based deployment
* **Mocha** — Application testing
* **SonarQube** — Code analysis configuration
* **Terraform** — Infrastructure as Code
* **Git & GitHub** — Version control
* **Linux** — Development environment

The Node.js project includes `start`, `test`, and `sonar` scripts for running the application, tests, and SonarQube scanner respectively.

---

## Project Structure

```text
node-cicd/
│
├── DevSecOps/                 # DevSecOps-related files
├── terraform/                 # Terraform configuration
├── views/                     # Application views
│
├── app.js                     # Node.js application
├── test.js                    # Mocha tests
│
├── Dockerfile                 # Docker image configuration
├── docker-compose.yaml        # Docker Compose configuration
├── Jenkinsfile                # Jenkins pipeline
├── sonar-project.properties   # SonarQube configuration
│
├── package.json               # Dependencies and scripts
├── package-lock.json
├── .dockerignore
├── .gitignore
└── README.md
```

---

## Run Locally

### Clone the repository

```bash
git clone https://github.com/bhavyasehgall/node-cicd.git
cd node-cicd
```

### Install dependencies

```bash
npm install
```

### Start the application

```bash
node app.js
```

The application runs on port `8000`.

---

## Run with Docker

### Build the image

```bash
docker build -t node-app .
```

### Start the container

```bash
docker run -d \
  -p 8000:8000 \
  --name node-app-container \
  node-app
```

Open:

```text
http://localhost:8000
```

The Dockerfile uses `node:18-alpine`, installs the Node.js dependencies, copies the application into the image, exposes port `8000`, and starts `app.js`.

---

## Docker Compose

The repository also contains a Docker Compose configuration.

```bash
docker compose up
```

To stop the deployment:

```bash
docker compose down
```

The current Compose configuration exposes port `8000` and uses the configured Node.js application image.

---

## Jenkins CI/CD Pipeline

The `Jenkinsfile` defines a four-stage pipeline.

### 1. Clone Code

Jenkins checks out the `main` branch from this repository.

### 2. Build Docker Image

Jenkins builds the application image:

```bash
docker build -t node-app .
```

### 3. Stop Old Container

The previous application container is removed:

```bash
docker rm -f node-app-container || true
```

### 4. Run Container

Jenkins starts the newly built image:

```bash
docker run -d -p 8000:8000 \
  --name node-app-container \
  node-app
```

These stages are defined directly in the current Jenkins pipeline.

---

## Testing

The project includes Mocha-based tests.

Run them with:

```bash
npm test
```

The current test file contains basic assertions demonstrating automated testing with Mocha and Node.js `assert`.

---

## SonarQube

The repository includes a `sonar-project.properties` configuration for analyzing the JavaScript application with SonarQube.

The configuration defines:

```text
Project Key: node-todo-app
Project Name: Node application
Language: JavaScript
Source: ./
```

SonarQube can be invoked through the project's npm script:

```bash
npm run sonar
```

The SonarQube configuration is included in the repository but is **not currently executed as a stage in the Jenkinsfile**.

---

## DevSecOps

The repository contains a `DevSecOps/` directory along with SonarQube and Terraform configurations.

These components provide a foundation for extending the pipeline with security and infrastructure automation.

Possible integrations include:

```text
Source Code
     │
     ▼
Automated Tests
     │
     ▼
Code Quality Analysis
     │
     ▼
Security Scanning
     │
     ▼
Docker Image
     │
     ▼
Container Deployment
```

The current Jenkins pipeline focuses on Docker-based build and deployment. Security scanning and additional DevSecOps stages can be integrated as the project evolves.

---

## Terraform

The repository contains a `terraform/` directory for Infrastructure as Code.

Terraform can be used to define and provision infrastructure through configuration files instead of manually creating resources.

This provides a path toward integrating cloud infrastructure deployment into the CI/CD workflow.

---

## What This Project Demonstrates

* CI/CD fundamentals
* Jenkins pipeline configuration
* Docker containerization
* Automated Docker deployment
* Node.js application deployment
* Basic automated testing
* SonarQube configuration
* DevSecOps concepts
* Infrastructure as Code concepts
* Git and GitHub workflows
* Linux-based application deployment

---

## Future Improvements

The pipeline can be extended with:

* Automated unit testing in Jenkins
* SonarQube quality gates
* Dependency vulnerability scanning
* Docker image vulnerability scanning
* Secret scanning
* SAST
* DAST
* Security-based pipeline gates
* Docker registry integration
* AWS deployment
* Terraform automation
* Application monitoring and logging

---

## Author

**Bhavya Sehgal**

Cybersecurity | VAPT | DevSecOps | Security Automation

[GitHub](https://github.com/bhavyasehgall)
