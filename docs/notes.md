# Technical Notes

## Docker Challenges and Solutions
**Problem:** One of the biggest challenges was ensuring the PHP application could connect to the MySQL database container before the database was fully initialized.
**Solution:** I implemented a `healthcheck` in the `docker-compose.yml` for the database service and used the `depends_on` with `condition: service_healthy` for the application service. This ensures the app only starts once the database is ready to accept connections.

## Git/GitHub Lessons
The most important lesson learned was the importance of a clean and professional commit history. Using descriptive prefixes like `feat:`, `fix:`, and `docker:` helps other developers understand the evolution of the project at a glance. Additionally, maintaining a proper directory structure from the start makes the project much easier to manage and containerize.

VPS Lessons
The biggest challenge was the Port Forwarding configuration within the GitHub Codespaces environment. I overcame this by verifying the deployment through Docker Logs, which confirmed that the server was running successfully (Apache configured and resuming normal operations) even when the browser UI faced redirection issues. This technical verification ensured the container was healthy and the application was ready for production
