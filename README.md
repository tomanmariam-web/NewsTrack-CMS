NewsTrack-CMS
NewsTrack-CMS is a lightweight, professional News Management System built with PHP and MySQL. It provides a clean interface for managing news articles, categories, and user authentication.

Tech Stack
Backend: PHP 8.2

Database: MySQL 8.0

Frontend: HTML5, CSS3 (RTL Support)

Containerization: Docker, Docker Compose

Cloud/VPS Environment: GitHub Codespaces (Linux-based Cloud Instance)

Features
User Registration and Login

News Article Management (Add, Edit, Delete)

Category Management

Soft-delete functionality (Trash bin)

Image upload support

Fully responsive Arabic interface

🚀 Deployment on VPS / Cloud Environment
This section describes how to deploy the project on a VPS or a cloud-based instance like GitHub Codespaces.

1. Prerequisites
Before starting, ensure the environment has Git and Docker installed.

Bash

# Verify installation
git --version
docker --version
2. Clone the Repository
Bash

git clone https://github.com/tomanmariam/NewsTrack-CMS.git
cd NewsTrack-CMS
3. Build and Run using Docker
To build the image and run the container manually:

Bash

# Build the Docker Image
docker build -t newstrack-app .

# Run the Container
docker run -d -p 8080:80 --name my-final-app newstrack-app
4. Verification & Production URL
To verify that the server is running successfully, check the container status and logs:

Bash

# Check running containers
docker ps

# View application logs (Confirmation of Apache/PHP status)
docker logs my-final-app
Production URL: The project is accessible via the forwarded cloud port (e.g., https://[codespace-name]-8080.app.github.dev). Note: Deployment was verified through Docker Logs showing "Apache configured -- resuming normal operations".

🛠 Local Development (How to Run)
Build and start the containers:

Bash

docker-compose up --build -d
Access the application: Open your browser and navigate to http://localhost:8080/login.php.

Default Credentials:

Email: mariam@gmail.com

Password: 1234567

Configuration
Ports: The application runs on port 8080 (External) mapped to 80 (Internal).

Database: MySQL is configured on port 3306 internally.

Challenges & Solutions
During the deployment on the cloud environment (GitHub Codespaces), the main challenge was Port Forwarding visibility. This was overcome by:

Mapping the container to port 80 internally to match the cloud's default web server.

Verifying the deployment through Docker Logs to ensure the Apache service started correctly even when the browser UI faced redirection issues.
