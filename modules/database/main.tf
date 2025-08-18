
# modules/database/main.tf
# Module aggregator for database-related modules

module "rds" {
  source = "./rds"

  vpc_id            = var.vpc_id
  subnet_ids        = var.subnet_ids
  engine            = var.rds_engine
  instance_class    = var.rds_instance_class
  allocated_storage = var.rds_allocated_storage
  db_username       = var.rds_db_username
  db_password       = var.rds_db_password
  env               = var.env
}

module "dynamodb" {
  source = "./dynamodb"

  table_name    = var.dynamodb_table_name
  billing_mode  = var.dynamodb_billing_mode
  read_capacity = var.dynamodb_read_capacity
  write_capacity = var.dynamodb_write_capacity
  hash_key      = var.dynamodb_hash_key
  env           = var.env
}

/*

**Description**: Aggregates the `rds` and `dynamodb` modules, enabling users to reference the `database` module as a single entry point (e.g., `source = "../modules/database"`) while passing variables to the underlying modules.

**Use Cases**:
- Simplifying the composition of database resources in a project.
- Providing a unified interface for database module configuration.
- Supporting multi-database setups (e.g., combining RDS and DynamoDB). */