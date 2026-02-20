variable "aws_region" {
  type = string
}

variable "cluster_name" {
  type = string
}

variable "vpc_cidr" {
  type = string
}

variable "public_subnets" {
  type = map(string)
}

variable "private_subnets" {
  type = map(string)
}

variable "instance_types" {
  type = list(string)
}
variable "vpc_id" {type = string}
variable "rds_cidr_blocks" {type = list(string)}
variable "instance_class" {
  type        = string
  default     = "db.t3.micro"
}
variable "db_name" {type = string}
variable "db_username" {type = string}
variable "db_password" {
  type        = string
}