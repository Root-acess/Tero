
# modules/examples/basic/main.tf
# Basic example for the top-level module aggregator

module "tero" {
  source               = "../../"
  lambda_function_name = "basic-lambda"
  eks_cluster_name     = "basic-eks"
  ecs_cluster_name     = "basic-ecs"
  vpc_cidr_block       = "10.0.0.0/16"
  subnet_count         = 2
  rds_engine           = "postgres"
  rds_instance_class   = "db.t3.micro"
  rds_allocated_storage = 20
  rds_db_username      = "admin"
  rds_db_password      = "securepassword"
  dynamodb_table_name  = "basic-table"
  dynamodb_billing_mode = "PAY_PER_REQUEST"
  dynamodb_hash_key    = "id"
  iam_role_name        = "basic-role"
  iam_policy_arns      = ["arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"]
  kms_key_alias        = "alias/basic-key"
  kms_key_description  = "Basic KMS key"
  env                  = "dev"
}

/*

**Description**: Demonstrates a simple deployment of all Tero modules, suitable for testing or prototyping.

**Use Cases**:
- Testing the entire Tero Framework in a single configuration.
- Demonstrating combined resource provisioning.
- Serving as a starting point for developers. */