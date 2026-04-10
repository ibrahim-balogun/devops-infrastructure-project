# DevOps Infrastructure Project 🚀

![CI/CD Pipeline](https://github.com/ibrahim-balogun/devops-infrastructure-project/actions/workflows/main.yml/badge.svg)

## Overview
A complete end-to-end DevOps infrastructure project demonstrating 
real-world practices used by professional Cloud DevOps Engineers.

## Author
**Balogun Ibrahim** | Cloud DevOps Engineer | Lagos, Nigeria
- GitHub: [ibrahim-balogun](https://github.com/ibrahim-balogun)
- Email: balogunibrahim025@gmail.com

## Architecture
GitHub Push → CI/CD Pipeline → Docker Build →
Terraform (AWS Infrastructure) → Ansible (Server Config) →
Live Website → CloudWatch Monitoring

## Technologies Used
| Technology | Purpose |
|---|---|
| AWS EC2 | Virtual server hosting |
| AWS VPC | Private network infrastructure |
| AWS S3 | Object storage |
| AWS CloudWatch | Monitoring and alerting |
| AWS IAM | Security and access control |
| Terraform | Infrastructure as Code |
| Ansible | Configuration management |
| Docker | Application containerization |
| GitHub Actions | CI/CD pipeline automation |
| Nginx | Web server and reverse proxy |
| Linux/Bash | Server management and scripting |

## Project Structure
devops-infrastructure-project/
├── app/                    # Web application
│   └── index.html
├── terraform/              # AWS infrastructure code
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
├── ansible/                # Server configuration
│   ├── deploy.yml
│   └── inventory.ini
├── docker/                 # Container configuration
│   └── Dockerfile
├── monitoring/             # Health check scripts
│   └── health-check.sh
├── scripts/                # Automation scripts
│   └── deploy.sh
├── docs/                   # Documentation
└── .github/workflows/      # CI/CD pipeline
└── main.yml

## Infrastructure Created
- Custom VPC with public subnet
- Internet Gateway and Route Tables
- EC2 t3.micro instance (Ubuntu)
- Security Groups (SSH, HTTP, HTTPS)
- S3 bucket for storage

## How to Deploy
1. Clone repository
2. Configure AWS credentials
3. Run deployment script:
```bash
chmod +x scripts/deploy.sh
bash scripts/deploy.sh
```

## CI/CD Pipeline
Pipeline automatically runs on every push:
1. Validates project structure
2. Checks HTML files
3. Validates Terraform configuration
4. Validates Ansible playbooks
5. Builds Docker image
6. Tests Docker container
7. Security checks
8. Deployment notification

## Skills Demonstrated
- Cloud infrastructure provisioning (AWS)
- Infrastructure as Code (Terraform)
- Configuration management (Ansible)
- Container technology (Docker)
- CI/CD automation (GitHub Actions)
- Linux administration
- Shell scripting
- Network configuration (VPC)
- Security best practices (IAM, Security Groups)
- Monitoring (CloudWatch)
