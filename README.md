# Automated DevSecOps CI/CD Pipeline 🚀🔒

[![DevSecOps Automated CI Pipeline](https://github.com/nadia-693/secure-ci-cd-pipeline/actions/workflows/devsecops.yml/badge.svg)](https://github.com/nadia-693/secure-ci-cd-pipeline/actions/workflows/devsecops.yml)

An end-to-end automated Continuous Integration and Security (DevSecOps) pipeline that builds, tests, and secures a Python microservice on every push — combining static code analysis, container vulnerability scanning, and automated Docker builds.

## Architecture & Security Controls

1. **Application Layer** — Python Flask microservice.
2. **Static Application Security Testing (SAST)** — scans the source code for security issues using **Bandit**.
3. **Containerization** — lightweight Docker image built from the app.
4. **Vulnerability Scanning** — scans the built Docker image for known CVEs using **Trivy**.
5. **CI Automation** — the entire pipeline runs automatically on every push via **GitHub Actions**.

## Tech Stack

- **Language:** Python 3.11
- **Framework:** Flask
- **Containerization:** Docker
- **CI/CD Platform:** GitHub Actions
- **Security Tools:** Bandit (SAST), Trivy (container scanning)

## Project Structure
secure-ci-cd-pipeline/
├── .github/
│ └── workflows/
│ └── devsecops.yml # CI/CD + security pipeline
├── app.py # Flask application
├── requirements.txt # Python dependencies
├── Dockerfile # Container build instructions
└── README.md

## How to Run Locally

### 1. Clone the repository

```bash
git clone https://github.com/nadia-693/secure-ci-cd-pipeline.git
cd secure-ci-cd-pipeline
```

### 2. Build the Docker image

```bash
docker build -t secure-ci-cd-pipeline .
```

### 3. Run the container

```bash
docker run -d -p 5000:5000 --name secure-app secure-ci-cd-pipeline
```

The app will be available at `http://localhost:5000`.

### 4. Stop the container

```bash
docker stop secure-app
```

## What the CI/CD Pipeline Does

On every push to `main`, GitHub Actions automatically:

1. Installs dependencies and runs **Bandit** to scan the Python code for security vulnerabilities (e.g. hardcoded secrets, unsafe function calls).
2. Builds the Docker image.
3. Runs **Trivy** against the built image to detect known vulnerabilities (CVEs) in the base image and dependencies.
4. Fails the build if critical issues are found — preventing insecure code from being merged.

See [`.github/workflows/devsecops.yml`](.github/workflows/devsecops.yml) for the full pipeline definition.

## Why This Project

Most CI/CD pipelines only test that code *works*. This one also checks that code is *safe* — catching vulnerabilities in both the source code and the final container image before deployment, following DevSecOps best practices.

## Author

**Nadia Saleh** — DevOps & Cybersecurity Trainee
[LinkedIn](https://www.linkedin.com/in/nadia-saleh-48a009353) · [GitHub](https://github.com/nadia-693)
