module "vpc" {
  source          = "./vpc"
  cluster_name    = var.cluster_name
  vpc_cidr        = var.vpc_cidr
  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets
}

module "rds" {
  source         = "./rds"
  vpc_id         = module.vpc.vpc_id
  subnet_ids     = module.vpc.private_subnet_ids
  instance_class = var.instance_class
  allowed_cidr_blocks = var.rds_cidr_blocks
  aws_region = var.aws_region
  db_name     = var.db_name
  db_username = var.db_username
  db_password = var.db_password
}
