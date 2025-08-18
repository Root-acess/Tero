# Database Module

This module aggregates AWS RDS and DynamoDB modules for provisioning relational and NoSQL databases.

## Inputs
- `vpc_id` (string, optional): ID of the VPC for RDS.
- `subnet_ids` (list(string), optional): List of subnet IDs for RDS.
- `rds_engine` (string, optional, default: `postgres`): RDS database engine.
- `rds_instance_class` (string, optional, default: `db.t3.micro`): RDS instance class.
- `rds_allocated_storage` (number, optional, default: `20`): Storage in GB for RDS.
- `rds_db_username` (string, optional, default: `admin`): Database username for RDS.
- `rds_db_password` (string, optional, sensitive): Database password for RDS.
- `dynamodb_table_name` (string, optional, default: `tero-table`): Name of the DynamoDB table.
- `dynamodb_billing_mode` (string, optional, default: `PAY_PER_REQUEST`): DynamoDB billing mode.
- `dynamodb_read_capacity` (number, optional, default: `5`): Read capacity for DynamoDB.
- `dynamodb_write_capacity` (number, optional, default: `5`): Write capacity for DynamoDB.
- `dynamodb_hash_key` (string, optional, default: `id`): Hash key for DynamoDB.
- `env` (string, optional, default: `dev`): Deployment environment.

## Outputs
- `rds_endpoint`: Endpoint of the RDS instance.
- `rds_arn`: ARN of the RDS instance.
- `dynamodb_table_arn`: ARN of the DynamoDB table.
- `dynamodb_table_name`: Name of the DynamoDB table.

## Usage
```hcl
module "database" {
  source               = "../../modules/database"
  vpc_id               = module.network.vpc_id
  subnet_ids           = module.network.subnet_ids
  rds_engine           = "postgres"
  rds_instance_class   = "db.t3.micro"
  rds_db_username      = "admin"
  rds_db_password      = "securepassword"
  dynamodb_table_name  = "my-table"
  env                  = "prod"
}