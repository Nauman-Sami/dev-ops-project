DevOps Project: Multi-Cloud Infrastructure with IaC and CI/CD



Terraform
Ansible
Multi-Cloud
Project Overview
This repository contains the complete implementation of a DevOps academic project focused on Infrastructure as Code (IaC) using Terraform and Ansible across multiple cloud providers: AWS, Azure, and Google Cloud Platform (GCP).
The project demonstrates:

Provisioning basic cloud infrastructure (networks, Kubernetes clusters, storage, databases) using Terraform.
Configuration management with Ansible.
Design of a CI/CD pipeline.
Comparisons of IaC tools and CI/CD tools.
Cost analysis for free-tier usage.

All resources are designed to stay within free-tier limits where possible.
Objectives

Set up free-tier accounts on AWS, Azure, and GCP.
Use Terraform for multi-cloud infrastructure provisioning.
Use Ansible for configuration automation.
Design a secure and efficient CI/CD pipeline.
Compare IaC tools (Terraform vs. CloudFormation vs. ARM Templates).
Compare CI/CD tools (e.g., Jenkins vs. GitHub Actions).
Perform basic cost analysis.

Repository Structure
textdevops-project/
├── terraform/
│   ├── aws/          # Terraform configs for AWS (VPC, EKS, S3, RDS)
│   ├── azure/        # Terraform configs for Azure (VNet, AKS, Blob, SQL)
│   └── gcp/          # Terraform configs for GCP (VPC, GKE, Storage, Cloud SQL)
├── ansible/
│   └── playbook.yml  # Ansible playbook for basic configuration (Docker, updates)
├── cicd/
│   └── pipeline.yml  # Example CI/CD pipeline (GitHub Actions or Jenkins config)
├── docs/
│   ├── iac_comparison.md     # IaC Tools Comparison Report
│   ├── cicd_comparison.md    # CI/CD Tools Comparison
│   └── cost_analysis.md      # Cloud Cost Analysis
├── screenshots/      # Folder for deployment screenshots (dashboards, terraform apply)
└── README.md         # This file
Phase 1: Infrastructure as Code (IaC)
Tools Used

Terraform: For provisioning infrastructure across AWS, Azure, GCP.
Ansible: For post-provisioning configuration.

Key Resources Provisioned

CloudNetworkingKubernetesStorageDatabaseAWSVPC + SubnetEKSS3RDSAzureVirtual NetworkAKSBlob StorageAzure SQLGCPVPC NetworkGKECloud StorageCloud SQL
Ansible Playbook

Installs Docker and Git.
Updates system packages.
Starts Docker service.

Phase 2: CI/CD Pipeline

Chosen Tool: GitHub Actions (easy setup) or Jenkins (scalable).
Pipeline Stages:
Code Checkout
Code Quality (SonarQube)
Build Docker Image
Security Scan (Trivy)
Automated Testing
Artifact Storage

Includes Dockerfile example and vulnerability scanning explanation.

Cloud dashboards
terraform init/apply outputs
Ansible execution
Pipeline runs

<img width="1668" height="788" alt="Screenshot 2025-12-20 at 1 22 55 AM" src="https://github.com/user-attachments/assets/9b094480-7009-44ee-85ce-6ba7b9e86c96" />

Prerequisites:
Install Terraform
Install Ansible
Install Git, Docker
Create free accounts on AWS, Azure, GCP and configure credentials.

Terraform Usage:Bashcd terraform/aws
terraform init
terraform plan
terraform applyRepeat for azure and gcp folders.
Ansible Usage:Bashansible-playbook ansible/playbook.yml -i inventory
CI/CD:
Import the pipeline config into GitHub Actions or Jenkins.


Warning: Always run terraform destroy after testing to avoid charges.
Conclusion
This project showcases practical DevOps principles in a multi-cloud setup using modern IaC tools. It emphasizes automation, cost-efficiency, and best practices.
