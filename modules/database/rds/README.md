# RDS Module

This module provisions an AWS RDS database instance.

## Inputs
- `vpc_id` (string, required): ID of the VPC.
- `subnet_ids` (list(string), required): List of subnet IDs.
- `engine` (string, optional, default: `postgres`): Database engine.
- `instance_class` (string, optional, default: `db.t3.micro`): Instance class.
- `allocated_storage` (number, optional, default: `20`): Storage in GB.
- `db_username` (string, required): Database username.
- `db_password` (string, required, sensitive): Database password.
- `env` (string, required): Deployment environment.

## Outputs
- `endpoint`: Endpoint of the RDS instance.
- `arn`: ARN of the RDS instance.

## Usage
```hcl
module "rds" {
  source         = "../../modules/database/rds"
  vpc_id         = module.network.vpc_id
  subnet_ids     = module.network.subnet_ids
  engine         = "postgres"
  instance_class = "db.t3.micro"
  db_username    = "admin"
  db_password    = "securepassword"
  env            = "prod"
}