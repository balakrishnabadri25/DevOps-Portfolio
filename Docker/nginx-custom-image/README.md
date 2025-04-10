# 🚀 Custom NGINX Docker Image by A Balakrishna

Welcome to my custom-built NGINX Docker image project!  
This is a lightweight and styled NGINX web server container that serves a personalized HTML/CSS landing page — perfect for showcasing DevOps Docker skills.

---

## 📦 Docker Hub Image

**Pull the image:**

```bash
docker pull balakrishnabadri25/abk_nginx_img
```

---

## 🧪 How to Run

You can run this image in seconds:

```bash
docker run -d -p 8080:80 balakrishnabadri25/abk_nginx_img
```

Then open your browser and go to:

```
http://localhost:8080
```

You’ll see a styled welcome page served by NGINX.

---

## 📁 Project Structure

```
nginx-custom-image/
├── Dockerfile
└── html/
    ├── index.html
    └── style.css
```

- `index.html`: Custom landing page  
- `style.css`: Styling for the page  
- `Dockerfile`: Uses `nginx:latest` and copies your site

---

## 🛠️ Technologies Used

- 🐳 Docker  
- 🌐 NGINX (latest image)  
- 💻 HTML + CSS

---

## 🌟 Why This Project?

This project demonstrates:
- Building and running containers using Docker
- Creating custom Dockerfiles
- Hosting static content with NGINX
- Publishing images to Docker Hub

---

## 📬 Contact

Built with ❤️ by **A Balakrishna**  
If you liked this project, feel free to ⭐ the repo or pull the image!
