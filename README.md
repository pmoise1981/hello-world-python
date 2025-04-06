Flask Docker CI/CD Pipeline
This project demonstrates how to set up a Flask application, containerize it with Docker, and implement a CI/CD pipeline using GitHub Actions to automate the build and deployment process to a remote server.

Project Structure
.
├── app.py                # The main Flask application
├── Dockerfile            # Dockerfile to containerize the application
├── requirements.txt      # Python dependencies
├── ci_cd.yml             # GitHub Actions CI/CD pipeline configuration
└── README.md             # Project documentation
Prerequisites
Before getting started, make sure you have the following:

Docker installed on your local machine for building and running containers.

A GitHub account to access the repository and set up the CI/CD pipeline.

SSH access to a remote server for deployment.

Setup
1. Clone the repository
Clone this repository to your local machine:
git clone https://github.com/pmoise1981/hello-world-python.git
cd hello-world-python

2. Install dependencies
Install the dependencies listed in requirements.txt:
pip install -r requirements.txt


3. Build Docker Image
Build the Docker image using the provided Dockerfile:
docker build -t hello-world-python .


4. Run Flask Application in Docker
Run the Flask app in Docker:

docker run -d -p 8080:8080 hello-world-python
The application will be available at http://localhost:8080.

CI/CD Pipeline
GitHub Actions
The project includes a CI/CD pipeline configured using GitHub Actions in the ci_cd.yml file. It automates the process of:

Building the Docker image.

Pushing the Docker image to Docker Hub.

Deploying the image to a remote server using SSH.

1. Setup GitHub Secrets
In your GitHub repository, set up the following secrets:

DOCKER_USERNAME: Your Docker Hub username.

DOCKER_PASSWORD: Your Docker Hub password.

DEPLOY_KEY: Your private SSH key for server access.

2. Trigger the CI/CD Pipeline
Push changes to the main branch of the repository, and the pipeline will automatically trigger, building and deploying the latest changes to your remote server.

Example CI/CD Pipeline Steps
Checkout Code: The pipeline checks out the code from your repository.

Docker Setup: It sets up Docker Buildx for building the image.

Login to Docker Hub: Logs into Docker Hub using the provided credentials.

Build and Push Docker Image: Builds the Docker image and pushes it to Docker Hub with the latest tag.

Deploy via SSH: Pulls the latest image on the remote server and restarts the Docker container with the updated image.

Deployment
The Flask application is deployed on a remote server via SSH. The server must have Docker installed.

Deployment Process
The GitHub Actions pipeline pulls the latest Docker image.

The existing container is stopped and removed (if any).

The new container is started with the updated image.

Testing
You can test the application by navigating to:
http://localhost:8080
If the application is deployed on a remote server, you can access it using the server’s IP address and port.

License
This project is licensed under the MIT License - see the LICENSE file for details.


