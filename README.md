# Node.js CI/CD & DevSecOps

A practical **CI/CD and DevSecOps project** that demonstrates how a Node.js application can be containerized and automatically deployed using **Jenkins and Docker**.

The project combines application development with automation, containerization, testing, code-quality tooling, and infrastructure configuration.

---

## Overview

This project uses a simple Node.js application as the base for building a CI/CD workflow.

The main idea is:

```text
Developer
    │
    ▼
GitHub Repository
    │
    ▼
Jenkins Pipeline
    │
    ├── Clone Code
    │
    ├── Build Docker Image
    │
    ├── Stop Previous Container
    │
    └── Run New Container
    │
    ▼
Dockerized Node.js Application
```

This demonstrates the basic workflow used in modern DevOps and DevSecOps environments.

---

## Technologies Used

| Technology     | Purpose                                |
| -------------- | -------------------------------------- |
| Node.js        | Application runtime                    |
| JavaScript     | Application development                |
| Jenkins        | CI/CD automation                       |
| Docker         | Application containerization           |
| Docker Compose | Container management                   |
| SonarQube      | Code quality analysis configuration    |
| Terraform      | Infrastructure as Code                 |
| Git & GitHub   | Version control                        |
| Linux          | Development and deployment environment |

---

## Project Structure

```text
node-cicd/
│
├── DevSecOps/                 # DevSecOps-related configurations
├── terraform/                 # Infrastructure as Code
├── views/                     # Application views
│
├── app.js                     # Node.js application
├── test.js                    # Application tests
│
├── Dockerfile                 # Docker image configuration
├── docker-compose.yaml        # Docker Compose configuration
├── Jenkinsfile                # Jenkins CI/CD pipeline
├── sonar-project.properties   # SonarQube configuration
│
├── package.json               # Node.js dependencies
├── package-lock.json
├── .dockerignore
├── .gitignore
└── README.md
```

---

## Application Setup

### 1. Clone the repository

```bash
git clone https://github.com/bhavyasehgall/node-cicd.git
cd node-cicd
```

### 2. Install dependencies

```bash
npm install
```

### 3. Run the application

```bash
node app.js
```

The application can then be accessed through the configured application port.

---

## Running with Docker

### Build the image

```bash
docker build -t node-app .
```

### Run the container

```bash
docker run -d -p 8000:8000 --name node-app-container node-app
```

The application will be available at:

```text
http://localhost:8000
```

### Using Docker Compose

```bash
docker compose up --build
```

To stop the services:

```bash
docker compose down
```

---

## Jenkins CI/CD Pipeline

The project includes a `Jenkinsfile` that automates the Docker-based deployment process.

The current pipeline performs these stages:

### 1. Clone Code

Jenkins retrieves the source code from the GitHub `main` branch.

### 2. Build Docker Image

A Docker image is created from the project's `Dockerfile`.

```bash
docker build -t node-app .
```

### 3. Stop Previous Container

The existing application container is removed if it is already running.

```bash
docker rm -f node-app-container || true
```

### 4. Run New Container

A new container is started from the freshly built image.

```bash
docker run -d -p 8000:8000 --name node-app-container node-app
```

This provides a simple automated deployment workflow where a Jenkins build can replace the running application with a newly built container.

---

## CI/CD Workflow

```text
        Git Push
           │
           ▼
      GitHub Repository
           │
           ▼
         Jenkins
           │
           ▼
    Clone Source Code
           │
           ▼
    Build Docker Image
           │
           ▼
 Stop Previous Container
           │
           ▼
   Start New Container
           │
           ▼
   Node.js Application
```

---

## DevSecOps Components

The repository also contains configurations and directories related to security, code quality, and infrastructure:

* **DevSecOps** — security-oriented project configuration
* **SonarQube** — static code-quality analysis configuration
* **Terraform** — Infrastructure as Code
* **Docker** — isolated application deployment
* **Testing** — application test configuration

These components provide a foundation for integrating security and infrastructure checks into the software delivery lifecycle.

---

## What This Project Demonstrates

This project demonstrates practical understanding of:

* CI/CD fundamentals
* Jenkins pipelines
* Docker containerization
* Automated application deployment
* Git-based development workflows
* Node.js application deployment
* Docker Compose
* Infrastructure as Code concepts
* DevSecOps concepts
* Code-quality analysis
* Linux-based deployment workflows

---

## Learning Objectives

The project was built to understand how an application moves from source code to a running deployment through an automated pipeline.

Key concepts:

```text
Code
 ↓
Version Control
 ↓
CI/CD
 ↓
Containerization
 ↓
Automated Deployment
 ↓
Running Application
```

The project can be extended with additional security testing, automated testing, vulnerability scanning, image scanning, and cloud deployment stages.

---

## Future Improvements

Possible improvements include:

* Automated unit testing in Jenkins
* SonarQube quality gates
* Docker image vulnerability scanning
* Dependency vulnerability scanning
* Secret scanning
* SAST integration
* DAST integration
* Automated security gates
* Docker image registry integration
* AWS deployment
* Terraform-based infrastructure deployment
* Monitoring and logging

---

## Author

**Bhavya Sehgal**

Cybersecurity | VAPT | DevSecOps | Security Automation

GitHub: [bhavyasehgall](https://github.com/bhavyasehgall)

