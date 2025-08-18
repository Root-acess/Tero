
# templates/serverless-project/main.tf
# Main Terraform configuration for a serverless Tero project

module "tero" {
  source = "../../modules"

  # Compute configurations (Lambda only)
  lambda_function_name = var.lambda_function_name
  lambda_role_arn      = module.tero.iam_role_arn
  lambda_handler       = var.lambda_handler
  lambda_runtime       = var.lambda_runtime

  # Networking configurations (minimal VPC for API Gateway)
  vpc_cidr_block = var.vpc_cidr_block
  subnet_count   = var.subnet_count

  # Database configurations (DynamoDB only)
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

**Description**: Configures a serverless project with Lambda, DynamoDB, and minimal networking, using the `modules/` aggregator.

**Use Cases**:
- Bootstrapping serverless applications.
- Supporting API-driven or event-driven architectures.
- Simplifying Lambda and DynamoDB deployments. */