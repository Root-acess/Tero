
# templates/basic-project/variables.tf
# Variables for the basic Tero project

variable "region" {
  description = "AWS region for deployment"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

variable "project_name" {
  description = "Project name for resource naming"
  type        = string
  default     = "tero-project"
}

variable "lambda_function_name" {
  description = "Name of the Lambda function"
  type        = string
  default     = "basic-lambda"
}

variable "eks_cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "basic-eks"
}

variable "ecs_cluster_name" {
  description = "Name of the ECS cluster"
  type        = string
  default     = "basic-ecs"
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
  default     = "basic-table"
}

variable "dynamodb_billing_mode" {
  description = "Billing mode for DynamoDB (PROVISIONED or PAY_PER_REQUEST)"
  type        = string
  default     = "PAY_PER_REQUEST"
}

variable "dynamodb_hash_key" {
  description = "Hash key for the DynamoDB table"
  type        = string
  default     = "id"
}

variable "iam_role_name" {
  description = "Name of the IAM role"
  type        = string
  default     = "basic-role"
}

variable "iam_policy_arns" {
  description = "List of policy ARNs to attach to the IAM role"
  type        = list(string)
  default     = ["arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"]
}

variable "kms_key_alias" {
  description = "Alias for the KMS key"
  type        = string
  default     = "alias/basic-key"
}

variable "kms_key_description" {
  description = "Description for the KMS key"
  type        = string
  default     = "Basic KMS key"
}

/*
**Description**: Defines variables for the `basic-project` template, mirroring inputs for the `modules/` aggregator.

**Use Cases**:
- Customizing the project configuration without modifying `main.tf`.
- Supporting flexible deployments with defaults for quick setup.
- Ensuring secure handling of sensitive data like `rds_db_password`. */