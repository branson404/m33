output "cluster_name" {
  value = module.eks.cluster_name
}

output "cluster_endpoint" {
  value = module.eks.cluster_endpoint
}
output "vpc_id" {
  value = aws_vpc.this.id
}

output "private_subnet_ids" {
  value = values(aws_subnet.private)[*].id
}
