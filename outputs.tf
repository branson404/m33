output "cluster_name" {
  value = module.eks.cluster_name
}

output "cluster_endpoint" {
  value = module.eks.cluster_endpoint
}
output "vpc_id" {
  value = module.vpc.aws_vpc.this.id
}

output "private_subnet_ids" {
  value = values(module.vpc.aws_subnet.private)[*].id
}
