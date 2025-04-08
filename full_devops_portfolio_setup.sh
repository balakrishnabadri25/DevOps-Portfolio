
# Navigate to your cloned repo (replace with your actual path if needed)
cd devops-portfolio

# Create main folders
mkdir Docker Jenkins Terraform Kubernetes Ansible Monitoring Final-Year-Project

# Docker Sample Project
mkdir Docker/nginx-custom-image
echo -e "# NGINX Custom Image\n\nThis project builds a custom NGINX Docker image with a custom index page." > Docker/nginx-custom-image/README.md
echo -e "FROM nginx\nCOPY index.html /usr/share/nginx/html/index.html" > Docker/nginx-custom-image/Dockerfile

# Jenkins Sample Project
mkdir Jenkins/docker-ci-cd-pipeline
echo -e "# Jenkins CI/CD with Docker\n\nSimple Jenkins pipeline for a Dockerized app." > Jenkins/docker-ci-cd-pipeline/README.md
echo -e "pipeline {\n  agent any\n  stages {\n    stage('Build') {\n      steps {\n        echo 'Building...'\n      }\n    }\n  }\n}" > Jenkins/docker-ci-cd-pipeline/Jenkinsfile

# Terraform Sample Project
mkdir Terraform/ec2-instance
echo -e "# Terraform EC2 Instance\n\nTerraform code to launch an EC2 instance." > Terraform/ec2-instance/README.md
echo -e "provider \"aws\" {\n  region = \"us-east-1\"\n}\n\nresource \"aws_instance\" \"example\" {\n  ami           = \"ami-0c55b159cbfafe1f0\"\n  instance_type = \"t2.micro\"\n}" > Terraform/ec2-instance/main.tf

# Kubernetes Sample Project
mkdir -p Kubernetes/flask-k8s-deployment
echo -e "# Flask App on Kubernetes\n\nKubernetes deployment and service files for a simple Flask app." > Kubernetes/flask-k8s-deployment/README.md
echo -e "apiVersion: apps/v1\nkind: Deployment\nmetadata:\n  name: flask-deployment\nspec:\n  replicas: 2\n  selector:\n    matchLabels:\n      app: flask\n  template:\n    metadata:\n      labels:\n        app: flask\n    spec:\n      containers:\n      - name: flask\n        image: flask-app:latest\n        ports:\n        - containerPort: 5000" > Kubernetes/flask-k8s-deployment/deployment.yaml
echo -e "apiVersion: v1\nkind: Service\nmetadata:\n  name: flask-service\nspec:\n  selector:\n    app: flask\n  ports:\n  - protocol: TCP\n    port: 80\n    targetPort: 5000\n  type: LoadBalancer" > Kubernetes/flask-k8s-deployment/service.yaml

# Ansible Sample Project
mkdir -p Ansible/lamp-stack-playbook
echo -e "# LAMP Stack Playbook\n\nAnsible playbook to install and configure Apache, MySQL, and PHP on Ubuntu." > Ansible/lamp-stack-playbook/README.md
echo -e "- hosts: webservers\n  become: yes\n  tasks:\n    - name: Install Apache, MySQL, PHP\n      apt:\n        name: ['apache2', 'mysql-server', 'php']\n        state: present\n        update_cache: yes" > Ansible/lamp-stack-playbook/playbook.yml

# Monitoring Sample Project
mkdir -p Monitoring/prometheus-grafana-setup
echo -e "# Prometheus + Grafana Setup\n\nBasic configuration files to monitor services using Prometheus and Grafana." > Monitoring/prometheus-grafana-setup/README.md
echo -e "global:\n  scrape_interval: 15s\n\nscrape_configs:\n  - job_name: 'prometheus'\n    static_configs:\n      - targets: ['localhost:9090']" > Monitoring/prometheus-grafana-setup/prometheus.yml

# Final-Year-Project Placeholder
mkdir -p Final-Year-Project/Smart-Log-Analyzer
echo -e "# Smart Log Analyzer\n\nFinal year project using NLP to analyze and categorize system logs with DevOps tool integration." > Final-Year-Project/Smart-Log-Analyzer/README.md

# Git commands (optional, comment out if you want to add manually)
git add .
git commit -m "Initial DevOps folder structure with sample projects"
git push origin main
