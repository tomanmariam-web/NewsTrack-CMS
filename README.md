NewsTrack-CMS 📰
NewsTrack-CMS is a lightweight, professional News Management System built with PHP and MySQL. It provides a clean interface for managing news articles, categories, and user authentication with full RTL support.

💻 Tech Stack
Backend: PHP 8.2

Database: MySQL 8.0

Frontend: HTML5, CSS3 (Arabic RTL Support)

Containerization: Docker & Docker Compose

Cloud/VPS Environment: GitHub Codespaces (Linux-based Cloud Instance)

🚀 Deployment on VPS / Cloud Environment
This project is designed to be easily deployed on any Linux-based VPS or Cloud environment (e.g., Claw Cloud, AWS, or GitHub Codespaces).

1. Prerequisites
Ensure that Git and Docker are installed on your VPS. You can verify this by running:

Bash

git --version
docker --version
2. Clone the Repository
Clone the project from GitHub to your VPS:

Bash

git clone https://github.com/tomanmariam/NewsTrack-CMS.git
cd NewsTrack-CMS
3. Build and Run using Docker
To build the Docker image and run the container manually on the VPS:

Bash

# Build the Docker Image
docker build -t newstrack-app .

# Run the Container (Mapping VPS port 8080 to Container port 80)
docker run -d -p 8080:80 --name my-final-app newstrack-app
4. Verification
To ensure the deployment was successful, check the container status and server logs:

Bash

# Verify the container is running
docker ps

# Check server logs for confirmation
docker logs my-final-app
Confirmation: The logs should show "Apache/2.4.65 configured -- resuming normal operations".

🌐 Production URL
The project is deployed and live at: URL: https://supreme-spork-jjp4qvpxq96qf9wx-8080.app.github.dev/login.php

🛠 Local Development (Quick Start)
If you prefer using Docker Compose for local development:

Start the environment:

Bash

docker-compose up --build -d
Access the app: http://localhost:8080/login.php

Credentials: - Email: mariam@gmail.com

Password: 1234567

📝 Deployment Notes & Challenges
Challenges Faced: During deployment on the cloud environment, the primary challenge was Port Forwarding visibility and browser redirection issues.

Solution:

Manually mapped the container to port 80 internally to align with the cloud environment’s web server expectations.

Verified successful deployment via Docker Logs to confirm the Apache service was healthy even when the browser interface was inaccessible due to platform-specific networking restrictions.
