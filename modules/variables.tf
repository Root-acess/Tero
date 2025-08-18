
# modules/variables.tf
# Input variables for the top-level module aggregator

variable "lambda_function_name" {
  description = "Name of the Lambda function"
  type        = string
  default     = "tero-lambda"
}

variable "eks_cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "tero-eks"
}

variable "ecs_cluster_name" {
  description = "Name of the ECS cluster"
  type        = string
  default     = "tero-ecs"
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_count" {
  description = "Number of subnets to create"
  type        = number
  default     = 2
}

variable "rds_engine" {
  description = "RDS database engine"
  type        = string
  default     = "postgres"
}

variable "rds_instance_class" {
  description = "RDS instance class"
  type        = string
  default     = "db.t3.micro"
}

variable "rds_allocated_storage" {
  description = "Allocated storage in GB for RDS"
  type        = number
  default     = 20
}

variable "rds_db_username" {
  description = "Database username for RDS"
  type        = string
  default     = "admin"
}

variable "rds_db_password" {
  description = "Database password for RDS"
  type        = string
  sensitive   = true
  default     = ""
}

variable "dynamodb_table_name" {
  description = "Name of the DynamoDB table"
  type        = string
  default     = "tero-table"
}

variable "dynamodb_billing_mode" {
  description = "Billing mode for DynamoDB (PROVISIONED or PAY_PER_REQUEST)"
  type        = string
  default     = "PAY_PER_REQUEST"
}

variable "dynamodb_read_capacity" {
  description = "Read capacity units for DynamoDB provisioned mode"
  type        = number
  default     = 5
}

variable "dynamodb_write_capacity" {
  description = "Write capacity units for DynamoDB provisioned mode"
  type        = number
  default     = 5
}

variable "dynamodb_hash_key" {
  description = "Hash key for the DynamoDB table"
  type        = string
  default     = "id"
}

variable "iam_role_name" {
  description = "Name of the IAM role"
  type        = string
  default     = "tero-role"
}

variable "iam_policy_arns" {
  description = "List of policy ARNs to attach to the IAM role"
  type        = list(string)
  default     = ["arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"]
}

variable "kms_key_alias" {
  description = "Alias for the KMS key"
  type        = string
  default     = "alias/tero-key"
}

variable "kms_key_description" {
  description = "Description for the KMS key"
  type        = string
  default     = "Tero Framework KMS key"
}

variable "env" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

/*

**Description**: Consolidates variables for all submodules, providing defaults and sensitive handling for credentials.

**Use Cases**:
- Centralizing configuration for all Tero resources.
- Supporting flexible deployments with defaults for quick setup.
- Ensuring secure handling of sensitive data like database passwords. */