# Express Server with CI/CD Pipeline

This repository contains an Express.js server with a complete CI/CD pipeline using Jenkins, GitHub webhooks, and Docker.

## CI/CD Pipeline Flow

1. **GitHub Integration**
   - Code is pushed to GitHub repository
   - GitHub webhook triggers Jenkins build automatically
   - Webhook URL format: `http://YOUR_JENKINS_URL/github-webhook/`

2. **Jenkins Pipeline**
   - Jenkins receives the webhook trigger
   - Executes the following stages:
     - Builds Docker image
     - Pushes image to Docker Hub
     - Deploys container on the server

3. **Docker Deployment**
   - Image is built and tagged as `saravjot91/express-server`
   - Container runs on port 3000
   - Application is accessible at `http://localhost:3000`

## Setup Instructions

### 1. Jenkins Setup
1. Install Jenkins on your server
2. Install required Jenkins plugins:
   - Docker Pipeline
   - GitHub Integration
   - Pipeline
   - Credentials Plugin

3. Add Docker Hub credentials in Jenkins:
   - Go to Jenkins Dashboard → Manage Jenkins → Credentials
   - Add new credentials
   - Select "Username with password"
   - ID: `dockerhub`
   - Add your Docker Hub username and password

### 2. GitHub Webhook Setup
1. Go to your GitHub repository
2. Navigate to Settings → Webhooks
3. Add webhook:
   - Payload URL: `http://YOUR_JENKINS_URL/github-webhook/`
   - Content type: `application/json`
   - Select "Just the push event"
   - Enable SSL verification if using HTTPS

### 3. Pipeline Configuration
The Jenkinsfile in this repository defines the following stages:
```groovy
- Build Docker Image
- Push to Docker Hub
- Run Docker Container
```

### 4. Docker Configuration
- Ensure Docker is installed on your Jenkins server
- Make sure Jenkins user has permissions to run Docker commands
- The container will run on port 3000

## Usage

1. Make changes to your code
2. Push to GitHub:
   ```bash
   git add .
   git commit -m "Your commit message"
   git push origin main
   ```
3. Jenkins will automatically:
   - Build new Docker image
   - Push to Docker Hub
   - Deploy new container

## Troubleshooting

- Check Jenkins logs for build issues
- Ensure Docker Hub credentials are correct
- Verify GitHub webhook is properly configured
- Check Docker permissions for Jenkins user

## Environment Variables

- `DOCKER_IMAGE`: saravjot91/express-server
- Port mapping: 3000:3000