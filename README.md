# prod

## 📌 Project Overview
This project demonstrates hands-on implementation of advanced Terraform configurations on AWS. The focus was on understanding remote state management, state locking mechanisms, and provisioning multiple AWS resources while resolving real-world configuration and dependency errors.

## Branch Overview

This branch is extended from the `main` branch and focuses on implementing and validating advanced Terraform configurations independently. It includes dedicated setup and testing of remote backend configuration, Terraform state file management, and state locking using DynamoDB.

The branch was extracted from `main`, which contains the core Terraform configurations for provisioning VPC and EKS resources in the cloud. In this branch, the backend configuration and state management components were modularized and enhanced to ensure secure, reliable, and production-ready infrastructure deployment.
---

## Objectives

- Configure and understand **Terraform remote backend** #COMPLETED
- Manage and analyze the **Terraform state file** #COMPLETED
- Implement **state locking using DynamoDB** #COMPLETED
- Provision multiple AWS resources using Terraform
- Troubleshoot and resolve configuration, dependency, and permission errors
- Ensure stable and repeatable infrastructure deployment

---

## Technologies


- AWS (S3, EC2, EKS, IAM, VPC, Policies, etc.)
- AWS CLI
- Terraform
- Git

---

## Source & documentaions

###1. Remote Backend (S3)

To configure Terraform to store the state file remotely in an S3 bucket: (use this code)

```hcl
terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket"
    key            = "advanced/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock-table" #for lock file
    encrypt        = true
  }
}
