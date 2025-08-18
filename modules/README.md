# Tero Framework Modules

This module aggregates compute, networking, database, and security modules for provisioning AWS infrastructure.

## Inputs
- `lambda_function_name` (string, optional, default: `tero-lambda`): Name of the Lambda function.
- `eks_cluster_name` (string, optional, default: `tero-eks`): Name of the EKS cluster.
- `ecs_cluster_name` (string, optional, default: `tero-ecs`): Name of the ECS cluster.
- `vpc_cidr_block` (string, optional, default: `10.0.0.0/16`): CIDR block for the VPC.
- `subnet_count` (number, optional, default: `2`): Number of subnets to create.
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
- `iam_role_name` (string, optional, default: `tero-role`): Name of the IAM role.
- `iam_policy_arns` (list(string), optional, default: `["arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"]`): Policy ARNs to attach.
- `kms_key_alias` (string, optional, default: `alias/tero-key`): Alias for the KMS key.
- `kms_key_description` (string, optional, default: `Tero Framework KMS key`): Description for the KMS key.
- `env` (string, optional, default: `dev`): Deployment environment.

## Outputs
- `lambda_function_arn`: ARN of the Lambda function.
- `eks_cluster_endpoint`: Endpoint of the EKS cluster.
- `ecs_cluster_id`: ID of the ECS cluster.
- `vpc_id`: ID of the VPC.
- `subnet_ids`: List of subnet IDs.
- `rds_endpoint`: Endpoint of the RDS instance.
- `dynamodb_table_arn`: ARN of the DynamoDB table.
- `iam_role_arn`: ARN of the IAM role.
- `kms_key_arn`: ARN of the KMS key.

## Usage
```hcl
module "tero" {
  source               = "../modules"
  lambda_function_name = "my-lambda"
  vpc_cidr_block       = "10.1.0.0/16"
  rds_db_password      = "securepassword"
  dynamodb_table_name  = "my-table"
  iam_role_name        = "my-role"
  kms_key_alias        = "alias/my-key"
  env                  = "prod"
}