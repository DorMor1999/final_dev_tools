# Joomla Docker Deployment Project

## 🧑‍🏫 About the Project

This project was developed as a final assignment for the "Development Tools" course (Summer Semester, 2025), under the guidance of Mr. Tom Gavish.

The goal of the project is to set up and manage a full Joomla-based website infrastructure using Docker, including:

- Automated environment setup
- Database and file backup/restore functionality
- Shell scripting for common tasks
- Git-based project documentation and version control

---

## 🧑‍💻 Submitted By

- Yehonatan Demenshtien — ID: 204250146
- Dor Mor — ID: 315097659
- Ilan Kalantarov — ID: 322815671

---

## 🧰 Project Structure

```
project-root/
│
├── setup.sh               # Create Docker network, run MySQL and Joomla containers
├── backup.sh              # Dump MySQL database and copy Joomla files
├── restore.sh             # Import MySQL dump and restore Joomla files
├── cleanup.sh             # Remove containers, network, and backup files
├── my-joomla.backup.sql.gz  # (Optional) Compressed DB backup
├── joomla-files-backup/     # (Optional) Joomla files backup
├── README.md              # This file
```

---

## 🚀 Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/joomla-docker-project.git
cd joomla-docker-project
```

### 2. Run the Setup Script

```bash
./setup.sh
```

This will:
- Create a Docker network
- Launch a MySQL container with default credentials
- Launch a Joomla container connected to the MySQL instance

---

## 🌐 Accessing the Site

- **Public site**: [http://localhost:8080](http://localhost:8080)  
- **Admin panel**: [http://localhost:8080/administrator](http://localhost:8080/administrator)  
  - **Username**: `demoadmin`  
  - **Password**: `secretpassword`  

---

## 💾 Backing Up

To create a backup of the MySQL database and Joomla files:

```bash
./backup.sh
```

This will:
- Save a compressed SQL dump from the database
- Copy the Joomla `/var/www/html` directory from the container

---

## 🔁 Restoring from Backup

If you want to restore your site from a previous backup:

```bash
./restore.sh
```

This will:
- Inject the MySQL dump into a clean database
- Restore Joomla files into the running container
- Restart the Joomla container

---

## 🧹 Cleanup

To remove all containers, network, and backup files:

```bash
./cleanup.sh
```

> **Warning**: This deletes everything. Use with caution.

---

## 📌 Technical Notes

- Joomla data (articles, users, settings) is stored in the MySQL database.
- Templates, extensions, and uploads are stored in the container’s file system.
- Database port `3306` and Joomla port `8080` are exposed to localhost.
- All containers run on the same Docker network: `joomla-net`.

---

## 📚 How To Rebuild the Entire System (Step-by-Step)

1. Clone the repository
2. Run `./setup.sh`
3. Open [http://localhost:8080](http://localhost:8080) and finish the Joomla installation wizard
4. Use the provided admin login to access the backend
5. Add team users and articles
6. Run `./backup.sh` to save your work
7. Use `./restore.sh` to recover everything on another machine

---

## ✅ Final Checklist for Submission

- [x] Joomla and MySQL run inside Docker containers
- [x] All content is backed up (DB + files)
- [x] All shell scripts are working and tested
- [x] GitHub repository is public and includes documentation
- [x] Site can be restored by cloning the repo and running the scripts

---

## example:
![image](https://github.com/user-attachments/assets/d892a092-818b-4e2a-98b5-8900c1fe7b2a)
![image](https://github.com/user-attachments/assets/d892a092-818b-4e2a-98b5-8900c1fe7b2a)

---

> For any questions, contact the development team.
