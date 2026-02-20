output "vpc_id" {
  value = module.vpc.vpc_id
}

output "private_subnet_ids" {
  value = module.vpc.private_subnet_ids
}

output "rds_endpoint" {
  value = module.rds.db_instance_endpoint
}

output "rds_instance_id" {
  value       = module.rds.db_instance_identifier
}

output "security_group_id" {
  value = module.rds.rds_security_group_id
}