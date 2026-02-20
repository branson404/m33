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

variable "aws_region" {
  type        = string
  default     = "us-east-1"
}
variable "vpc_id" {type = string}
variable "subnet_ids" {type  = list(string)}
variable "allowed_cidr_blocks" {type = list(string)}
variable "allocated_storage" {
  type        = number
  default     = 20
}
variable "engine" {
  type        = string
  default     = "mysql"
}
variable "engine_version" {
  type        = string
  default     = "8.0"
}
variable "instance_class" {
  type        = string
  default     = "db.t3.micro"
}
variable "db_name" {type = string}
variable "db_username" {type = string}
variable "db_password" {
  type        = string
}
variable "db_port" {
  type        = number
  default     = 3306
}
variable "multi_az" {
  type        = bool
  default     = false
}