
# modules/database/rds/examples/basic/main.tf
# Basic example for RDS module

module "rds" {
  source         = "../../"
  vpc_id         = "vpc-12345678" # Replace with actual VPC ID
  subnet_ids     = ["subnet-12345678", "subnet-87654321"] # Replace with actual subnet IDs
  engine         = "postgres"
  instance_class = "db.t3.micro"
  db_username    = "admin"
  db_password    = "securepassword" # Replace with secure password
  env            = "dev"
}
