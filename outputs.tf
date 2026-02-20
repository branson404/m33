output "vpc_id" {
  value = module.vpc.vpc_id
}

output "private_subnet_ids" {
  value = module.vpc.private_subnet_ids
}

output "rds_endpoint" {
  value       = module.rds.aws_db_instance.rds.endpoint
}

output "rds_instance_id" {
  value       = module.rds.aws_db_instance.rds.id
}

output "rds_security_group_id" {
  value       = aws_security_group.rds_sg.id
}