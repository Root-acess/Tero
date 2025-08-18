
# templates/main.tf
# Default Terraform configuration for Tero templates

module "tero" {
  source = "../modules"

  # Compute configurations
  lambda_function_name = var.lambda_function_name
  lambda_role_arn      = module.tero.iam_role_arn
  eks_cluster_name     = var.eks_cluster_name
  ecs_cluster_name     = var.ecs_cluster_name

  # Networking configurations
  vpc_cidr_block = var.vpc_cidr_block
  subnet_count   = var.subnet_count

  # Database configurations
  rds_engine           = var.rds_engine
  rds_instance_class   = var.rds_instance_class
  rds_allocated_storage = var.rds_allocated_storage
  rds_db_username      = var.rds_db_username
  rds_db_password      = var.rds_db_password
  dynamodb_table_name  = var.dynamodb_table_name
  dynamodb_billing_mode = var.dynamodb_billing_mode
  dynamodb_hash_key    = var.dynamodb_hash_key

  # Security configurations
  iam_role_name       = var.iam_role_name
  iam_policy_arns     = var.iam_policy_arns
  kms_key_alias       = var.kms_key_alias
  kms_key_description = var.kms_key_description

  # Environment
  env = var.environment
}
/*

**Description**: Provides a default template for projects, similar to `basic-project/main.tf`, for general use.

**Use Cases**:
- Serving as a fallback template for projects.
- Supporting quick setup with the `modules/` aggregator.
- Providing a baseline for custom templates. */