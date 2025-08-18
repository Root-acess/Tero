

# examples/basic-infra/main.tf
# Basic infrastructure setup with VPC, EC2, and RDS

terraform {
  required_version = ">= 1.5.0"
}

module "network" {
  source = "../../modules/networking/vpc"

  name       = var.vpc_name
  cidr_block = var.vpc_cidr_block
  env        = var.environment
  azs        = var.availability_zones
}

module "compute" {
  source = "../../modules/compute/ec2"

  vpc_id       = module.network.vpc_id
  subnet_ids   = module.network.subnet_ids
  instance_type = var.ec2_instance_type
  ami          = var.ec2_ami
  env          = var.environment
}

module "database" {
  source = "../../modules/database/rds"

  vpc_id        = module.network.vpc_id
  subnet_ids    = module.network.subnet_ids
  engine        = var.rds_engine
  instance_class = var.rds_instance_class
  env           = var.environment
}

module "security" {
  source = "../../modules/security/baseline"

  vpc_id = module.network.vpc_id
  env    = var.environment
}


