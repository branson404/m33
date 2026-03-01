# Terraform Advanced Configuration Practice – AWS

## 📌 Project Overview
This project demonstrates hands-on implementation of advanced Terraform configurations on AWS. The focus was on understanding remote state management, state locking mechanisms, and provisioning multiple AWS resources while resolving real-world configuration and dependency errors.

---

## Objectives

- Configure and understand **Terraform remote backend**
- Manage and analyze the **Terraform state file**
- Implement **state locking using DynamoDB**
- Provision multiple AWS resources using Terraform
- Troubleshoot and resolve configuration, dependency, and permission errors
- Ensure stable and repeatable infrastructure deployment

---

## Tech Used

- Terraform
- AWS (S3, DynamoDB, EC2, RDS, IAM, VPC, Policies, etc.)
- AWS CLI
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
