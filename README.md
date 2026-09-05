# Automated DevSecOps CI/CD Pipeline 🚀🔒

An end-to-end automated Continuous Integration and Security (DevSecOps) pipeline designed to build, audit, and containerize a microservice application securely.

---

## 📌 Architecture & Security Controls
1. **Application Layer:** Python Flask microservice structured with non-root security container practices.
2. **Static Application Security Testing (SAST):** Scans source code vulnerabilities using **Bandit**.
3. **Containerization:** Lightweight Docker Alpine base image minimizing the attack surface.
4. **Vulnerability Scanning:** Automated Docker image vulnerability detection via **Aquasec Trivy**.
5. **CI Automation:** Continuous Integration orchestrated via **GitHub Actions**.

---

## 🛠️ Tech Stack
- **Language:** Python 3.11
- **Containerization:** Docker
- **CI/CD Platform:** GitHub Actions
- **Security Tools:** Bandit, Aquasecurity Trivy

---

## 💻 How to Run Locally

### 1. Clone the repository
```bash
git clone [https://github.com/nadia-693/secure-ci-cd-pipeline.git](https://github.com/nadia-693/secure-ci-cd-pipeline.git)
cd secure-ci-cd-pipeline
