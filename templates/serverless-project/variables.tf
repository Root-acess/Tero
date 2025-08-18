
# templates/serverless-project/variables.tf
# Variables for the serverless Tero project

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
  default     = "tero-serverless"
}

variable "lambda_function_name" {
  description = "Name of the Lambda function"
  type        = string
  default     = "serverless-lambda"
}

variable "lambda_handler" {
  description = "Handler for the Lambda function"
  type        = string
  default     = "index.handler"
}

variable "lambda_runtime" {
  description = "Runtime for the Lambda function"
  type        = string
  default     = "nodejs20.x"
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

variable "dynamodb_table_name" {
  description = "Name of the DynamoDB table"
  type        = string
  default     = "serverless-table"
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
  default     = "serverless-role"
}

variable "iam_policy_arns" {
  description = "List of policy ARNs to attach to the IAM role"
  type        = list(string)
  default     = ["arn:aws:iam::aws:policy/AmazonDynamoDBFullAccess"]
}

variable "kms_key_alias" {
  description = "Alias for the KMS key"
  type        = string
  default     = "alias/serverless-key"
}

variable "kms_key_description" {
  description = "Description for the KMS key"
  type        = string
  default     = "Serverless KMS key"
}

/*

**Description**: Defines variables for the `serverless-project` template, focusing on Lambda and DynamoDB.

**Use Cases**:
- Customizing serverless configurations.
- Supporting quick setup with defaults.
- Handling sensitive data securely. */