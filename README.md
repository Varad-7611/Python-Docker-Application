## 🚀 Flask Application Deployment using Docker on AWS EC2

This project demonstrates how to build a **simple Flask application**, containerize it using **Docker**, and deploy it on an **AWS EC2 instance**.  
The application runs inside a Docker container and is accessible through the EC2 public IP.

---

### 📌 Tech Stack
- **Python**
- **Flask**
- **Docker**
- **AWS EC2 (Ubuntu)**
- **Linux**

---

### 🐍 Flask Application
- Flask default port: **5000**
- The app is configured to run on `0.0.0.0` so it can be accessed from outside the container.

---

### ⚙️ Deployment Steps on AWS EC2

1️⃣ Launch an EC2 Instance
-OS: Ubuntu
-Security Group Inbound Rules:
    22 – SSH
    80 – HTTP (recommended)
    (or 5000 for direct Flask access)

2️⃣ Connect to EC2
```
ssh -i <key.pem> ubuntu@<EC2_PUBLIC_IP>
```
3️⃣ Install Docker 
 ```
code sudo apt update
sudo apt install docker.io
docker login
```

4️⃣ Clone the GitHub Repository
```
git clone <your-github-repo-url>
cd Python-Docker-Application
```

5️⃣ Build Docker Image
```
docker build -t flask-app .
```

6️⃣ Run Docker Container
```
docker run -d -p 80:5000 flask-app
```

🌍 Access the Application
```
http://<EC2_PUBLIC_IP>
```

---
###📸 Screenshot

<img width="1068" height="811" alt="Screenshot 2026-01-06 132107" src="https://github.com/user-attachments/assets/d16f899e-f593-4c00-bbbd-6a26902bf9bf" />

---


