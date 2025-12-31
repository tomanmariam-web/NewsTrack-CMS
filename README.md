# NewsTrack-CMS

NewsTrack-CMS is a lightweight, professional News Management System built with PHP and MySQL. It provides a clean interface for managing news articles, categories, and user authentication.

## Tech Stack
- **Backend:** PHP 8.2
- **Database:** MySQL 8.0
- **Frontend:** HTML5, CSS3 (RTL Support)
- **Containerization:** Docker, Docker Compose

## Features
- User Registration and Login
- News Article Management (Add, Edit, Delete)
- Category Management
- Soft-delete functionality (Trash bin)
- Image upload support
- Fully responsive Arabic interface

## How to Build and Run using Docker

### Prerequisites
- Docker installed on your machine
- Docker Compose installed

### Steps to Run
1. **Clone the repository:**
   ```bash
   git clone https://github.com/tomanmariam/NewsTrack-CMS.git
   cd NewsTrack-CMS
   ```

2. **Build and start the containers:**
   ```bash
   docker-compose up --build -d
   ```

3. **Access the application:**
   Open your browser and navigate to `http://localhost:8080/login.php`.

4. **Default Credentials:**
   - **Email:** `mariam@gmail.com`
   - **Password:** `1234567`

### How to Stop and Clean Up
To stop the containers and remove them:
```bash
docker-compose down
```
To remove the database volumes as well:
```bash
docker-compose down -v
```

## Configuration
- **Ports:** The application runs on port `8080`.
- **Database:** MySQL is configured on port `3306` internally.
- **Environment Variables:** Managed via `docker-compose.yml`.

## Testing
1. Navigate to `http://localhost:8080/register.php` to create a new account.
2. Log in with your credentials.
3. Add a new category in "Add Category".
4. Add a news article in "Add News".
5. Verify the article appears on the "Dashboard".

## Attribution
This project was developed as part of a web development assignment.
