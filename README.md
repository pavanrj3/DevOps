# Hi 👋, I'm Pavansai Nagabhyru

## About Me
 B.Tech Computer Science Student (2022–2026)

 Interested in DevOps, Linux, Cloud Computing, and Automation

 Currently learning:
- Linux Administration
- Git & GitHub
- Ansible
- Docker
- AWS Cloud
- Networking Fundamentals

 Goal:
To start my career as a DevOps Engineer and build scalable, automated infrastructure solutions.

---

## Skills

### Operating Systems
- Linux (Ubuntu, CentOS, AlmaLinux)
- Windows

### DevOps & Cloud
- Git
- GitHub
- Ansible
- Docker
- AWS (EC2, VPC, S3, Security Groups)

### Programming
- Python
- SQL
- Bash

### Databases
- MySQL
- PostgreSQL
- MariaDB

---

## Projects

### DevOps Learning Repository
Practicing Linux, Git, Bash Scripting, Networking, and Ansible.

### AI Resume Checker
Built using Streamlit, FastAPI, and AI APIs to analyze resumes and provide feedback.

### Data Analytics Projects
Worked with Python, SQL, Power BI, and Zoho Analytics to create dashboards and business insights.

---

## Currently Working On
- Advanced Ansible Automation
- Docker Containers
- CI/CD Concepts
- AWS Services
- Bash Scripting

---

## Connect With Me

- GitHub: https://github.com/pavanrj3
- LinkedIn: https://www.linkedin.com/in/pavansai-nagabhyru-101505311/

---



 Scenario: If a file opened by a process. Why rm filename will not delete the data? How to delete the file opened by process. How to check file is opened by process?

In Linux, a file is completely deleted only when its inode has no remaining links and no process is holding the file open

When a process opens a file, it receives a file descriptor that points to the file's inode.

The process continues to access the file through this file descriptor rather than through the filename.

When we execute:

rm filename

Linux removes the filename from the directory, but if a process is still using the file, the inode and file data remain on disk.

The file becomes invisible in the directory listing, but the disk space is not released.

To check whether a file is opened by a process in Linux, we can use lsof or fuser .

lsof shows the process name, PID, and file descriptor, while fuser shows the PIDs of processes using the file.

lsof filename

This command shows the process name, Process ID (PID), user, and file descriptor associated with the file.

fuser filename

The fuser command displays the PID of the process currently accessing the file. It is a quick way to identify which process is using a specific file.

These commands are particularly useful when a file cannot be deleted, modified, or when disk space is not released after deleting a large log file. In many cases, an application may still have the file open, causing Linux to keep the file data on disk until the process closes it.

Null Device (/dev/null) in Linux :

When a program sends output to /dev/null, the data is accepted by the operating system but is not stored anywhere.

This is useful when we want to suppress unwanted output from commands or scripts.

ls /tmp > /dev/null

In this command, the output of ls /tmp is redirected to /dev/null, so nothing is displayed on the screen.
