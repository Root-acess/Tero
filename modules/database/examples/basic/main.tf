
# modules/database/examples/basic/main.tf
# Basic example for the database module aggregator

module "database" {
  source               = "../../"
  vpc_id               = var.vpc_id
  subnet_ids           = var.subnet_ids
  rds_engine           = "postgres"
  rds_instance_class   = "db.t3.micro"
  rds_allocated_storage = 20
  rds_db_username      = "admin"
  rds_db_password      = var.rds_db_password
  dynamodb_table_name  = "basic-table"
  dynamodb_billing_mode = "PAY_PER_REQUEST"
  dynamodb_hash_key    = "id"
  env                  = "dev"
}
/*

**Description**: Demonstrates a simple deployment of RDS and DynamoDB using the `database` module aggregator, suitable for testing or prototyping.

**Use Cases**:
- Testing the aggregated `database` module.
- Demonstrating combined RDS and DynamoDB provisioning.
- Serving as a starting point for developers. */