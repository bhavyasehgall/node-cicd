# Node.js CI/CD & DevSecOps Lab

A hands-on project exploring **Node.js application development, CI/CD automation, containerization, and DevSecOps concepts** using Jenkins, Docker, SonarQube, and Terraform.

The project was built as a practical environment for understanding how application development and security practices can be integrated into an automated delivery workflow.

---

## 🎯 Project Overview

This project demonstrates a basic workflow around:

```text
Developer
    ↓
Git Repository
    ↓
Jenkins
    ↓
Build & Test
    ↓
Docker
    ↓
Containerized Node.js Application
```

Additional DevSecOps components such as SonarQube and Terraform are included for learning and experimentation.

---

## ✨ Technologies

### Application

* Node.js
* Express.js
* JavaScript

### Testing

* Mocha
* Node.js testing tools

### CI/CD

* Jenkins

### Containers

* Docker
* Docker Compose

### Code Quality

* SonarQube

### Infrastructure

* Terraform

---

## 📂 Project Structure

```text
node-cicd/
│
├── DevSecOps/
├── terraform/
├── views/
│
├── Dockerfile
├── Jenkinsfile
├── docker-compose.yaml
├── sonar-project.properties
├── app.js
├── test.js
├── package.json
└── README.md
```

---

## 🚀 Getting Started

### Clone the repository

```bash
git clone https://github.com/bhavyasehgall/node-cicd.git
cd node-cicd
```

### Check Node.js

```bash
node --version
npm --version
```

### Install dependencies

```bash
npm install
```

---

## ▶️ Run the Application

Start the Node.js application:

```bash
node app.js
```

The application can then be accessed through the port configured by the project.

---

## 🧪 Run Tests

Run the project's test command:

```bash
npm test
```

If the repository's current `package.json` uses a different test command, use the command defined there.

---

# 🐳 Docker

Build the Docker image:

```bash
docker build -t node-cicd .
```

Run the container:

```bash
docker run -p 3000:3000 node-cicd
```

---

## 🐳 Docker Compose

Where supported by the current configuration:

```bash
docker compose up --build
```

Stop the environment:

```bash
docker compose down
```

---

# 🔄 Jenkins Pipeline

The repository includes a `Jenkinsfile` for experimenting with automated application workflows.

A typical pipeline can include:

```text
Checkout
   ↓
Install Dependencies
   ↓
Build
   ↓
Run Tests
   ↓
Docker Build
   ↓
Deployment / Further Security Checks
```

The exact stages depend on the current Jenkins configuration.

---

# 🔍 SonarQube

The repository includes:

```text
sonar-project.properties
```

for experimenting with static code analysis and code-quality workflows.

SonarQube configuration is included as part of the project's DevSecOps learning environment.

---

# 🏗️ Terraform

Terraform configuration is included under:

```text
terraform/
```

This section is used to explore infrastructure-as-code concepts alongside CI/CD and application deployment.

---

# 🔐 DevSecOps Learning Goals

This project helps explore how security can be incorporated into software delivery.

Areas of interest include:

* Static analysis
* Dependency security
* Automated testing
* Container security
* Infrastructure security
* Secure CI/CD practices

Some security stages may be experimental or planned for future implementation.

---

# 🧠 What I Learned

Through this project I practiced:

* Node.js application development
* Express.js
* Automated testing
* Jenkins pipelines
* Docker
* Docker Compose
* SonarQube
* Terraform
* CI/CD concepts
* DevSecOps workflows

---

# 🚧 Future Improvements

Potential improvements include:

* Automated SAST
* Dependency vulnerability scanning
* Container image scanning
* Better Jenkins security stages
* Automated SonarQube quality gates
* Infrastructure validation
* Automated deployment
* Improved test coverage
* Security-focused CI checks

---

## 📌 Project Status

This is a **learning-focused CI/CD and DevSecOps project**.

It is intended to demonstrate practical experimentation with development, automation, containers, infrastructure, and security concepts rather than represent a production deployment pipeline.

---

## 📜 License

See the repository license for applicable terms.

---

## 👤 Author

**Bhavya Sehgal**

Cybersecurity | VAPT | Security Automation | DevSecOps

GitHub: https://github.com/bhavyasehgall
