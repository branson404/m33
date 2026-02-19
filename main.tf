module "vpc" {
  source          = "./vpc"
  cluster_name    = var.cluster_name
  vpc_cidr        = var.vpc_cidr
  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets
}

module "eks" {
  source         = "./eks"
  cluster_name   = var.cluster_name
  vpc_id         = module.vpc.vpc_id
  subnet_ids     = module.vpc.private_subnet_ids
  instance_types = var.instance_types
  desired_size   = var.desired_size
  min_size       = var.min_size
  max_size       = var.max_size
}
