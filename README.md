# M32

## 📌 Project Overview
This project demonstrates hands-on implementation of advanced Terraform configurations on AWS. The focus was on understanding remote state management, state locking mechanisms, and provisioning multiple AWS resources while resolving real-world configuration and dependency errors.

## Branch Structure

This branch contains Terraform files and directories organized using a modular structure. Each module is separated into its own folder, such as `vpc` and `rds`, where each directory includes the respective Terraform configurations required to provision those resources. The modular approach improves reusability, maintainability, and scalability, allowing independent provisioning of AWS resources while keeping the infrastructure code clean and well-structured.

---

## Objectives

- Configure and understand **Terraform remote backend**
- Manage and analyze the **Terraform state file**
- Implement **state locking using DynamoDB**
- Provision multiple AWS resources using Terraform - #COMPLETED
- Troubleshoot and resolve configuration, dependency, and permission errors #COMPLETED
- Ensure stable and repeatable infrastructure deployment #COMPLETED

---

## Tech Used

- Terraform
- AWS (S3, DynamoDB, EC2, RDS, IAM, VPC, Policies, etc.)
- AWS CLI
- Git
