aws_region   = "eu-north-1"
cluster_name = "demo-eks"
vpc_cidr     = "10.0.0.0/16"

public_subnets = {
  public-1 = "10.0.101.0/24"
  public-2 = "10.0.102.0/24"
}

private_subnets = {
  private-1 = "10.0.1.0/24"
  private-2 = "10.0.2.0/24"
}

instance_types = ["t3.medium"]

instance_class = "db.t3.micro"
rds_cidr_blocks = ["10.0.0.0/16"]

db_name     = "mydb"
db_username = "admin"
db_password = "Password123"
