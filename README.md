# Docker + ECR GitHub Actions Workflow

This repository contains a sample Flask application and a GitHub Actions workflow to:
- Build a Docker image
- Push it to AWS ECR
- Scan the image for vulnerabilities (HIGH/CRITICAL)
- Only deploy if the scan passes

## Setup

1. **Set the following secrets in your GitHub repository:**
   - `AWS_ACCESS_KEY_ID`
   - `AWS_SECRET_ACCESS_KEY`
   - `AWS_REGION` (e.g., `us-east-1`)
   - `ECR_REPOSITORY` (e.g., `my-ecr-repo`)

2. **Workflow file:**
   - See `.github/workflows/docker-ecr-scan.yml`

3. **Modify the deployment step as needed.**

## Sample Application

- `app.py`: Minimal Flask app
- `Dockerfile`: Builds the app into a container

## How it works

- On push to `main`, the workflow builds and pushes the Docker image to ECR.
- The image is scanned for HIGH/CRITICAL vulnerabilities using Trivy.
- If the scan passes, you can add deployment steps (e.g., ECS, Lambda, etc.). 