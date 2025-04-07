# Flask Docker CI/CD Pipeline

This project demonstrates how to:

- Build a simple Flask application  
- Containerize it with Docker  
- Set up CI/CD with GitHub Actions  
- Deploy it to a remote server (e.g., **DigitalOcean**)

---

## 📁 Project Structure

 ├── app.py # The main Flask application ├── Dockerfile # Dockerfile to containerize the app ├── requirements.txt # Python dependencies ├── ci_cd.yml # GitHub Actions CI/CD configuration └── README.md # Project documentation


---

## ✅ Prerequisites

- Docker installed on your local machine  
- A GitHub account to use GitHub Actions  
- SSH access to a remote server (like DigitalOcean) with Docker installed  
- Docker Hub account for storing your container image

---

## 🛠️ Setup

### 1. Clone the Repository

```bash
git clone https://github.com/pmoise1981/hello-world-python.git
cd hello-world-python

2. Install Dependencies
pip install -r requirements.txt

### 3. Build Docker Image
docker build -t hello-world-python .

### 4. Run the Flask App in Docker
docker run -d -p 8080:8080 hello-world-python
Visit: http://localhost:8080

CI/CD Pipeline with GitHub Actions
The CI/CD pipeline (defined in ci_cd.yml) does the following:

Builds the Docker image

Pushes it to Docker Hub

Deploys it to a remote server (DigitalOcean) via SSH

GitHub Secrets Needed
Secret Name	Description
DOCKER_USERNAME	Your Docker Hub username
DOCKER_PASSWORD	Your Docker Hub password
DEPLOY_KEY	Your private SSH key for server access
The pipeline is triggered on every push to the main branch.

Example Workflow Steps
Checkout Code

Set Up Docker Buildx

Login to Docker Hub

Build and Push Image

SSH into DigitalOcean and Deploy

🚀 Deployment to DigitalOcean
Your remote server (e.g., DigitalOcean droplet) must have Docker installed and SSH access enabled.

Deployment Process:

GitHub Actions connects to your server via SSH

Stops and removes any existing container

Pulls the latest Docker image from Docker Hub

Starts a new container using the updated image

Access the App
Visit:
http://<your-digitalocean-ip>:8080

✅ Testing
Local: http://localhost:8080

Remote: http://your-server-ip:8080

 💡 Want to see a live demo? Reach out to me and I’ll share access!


👨‍💻 Author
Pierre Moïse
GitHub • Cloud Deployment with Docker & CI/CD




