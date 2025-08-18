
# templates/multi-cloud-project/variables.tf
# Variables for the multi-cloud Tero project

# AWS variables
variable "aws_region" {
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
  default     = "tero-multi-cloud"
}

variable "aws_lambda_function_name" {
  description = "Name of the AWS Lambda function"
  type        = string
  default     = "multi-cloud-lambda"
}

variable "aws_vpc_cidr_block" {
  description = "CIDR block for the AWS VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "aws_subnet_count" {
  description = "Number of subnets to create in AWS"
  type        = number
  default     = 2
}

variable "aws_rds_engine" {
  description = "AWS RDS database engine"
  type        = string
  default     = "postgres"
}

variable "aws_rds_instance_class" {
  description = "AWS RDS instance class"
  type        = string
  default     = "db.t3.micro"
}

variable "aws_rds_allocated_storage" {
  description = "Allocated storage in GB for AWS RDS"
  type        = number
  default     = 20
}

variable "aws_rds_db_username" {
  description = "Database username for AWS RDS"
  type        = string
  default     = "admin"
}

variable "aws_rds_db_password" {
  description = "Database password for AWS RDS"
  type        = string
  sensitive   = true
  default     = ""
}

variable "aws_iam_role_name" {
  description = "Name of the AWS IAM role"
  type        = string
  default     = "multi-cloud-role"
}

variable "aws_iam_policy_arns" {
  description = "List of policy ARNs to attach to the AWS IAM role"
  type        = list(string)
  default     = ["arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"]
}

variable "aws_kms_key_alias" {
  description = "Alias for the AWS KMS key"
  type        = string
  default     = "alias/multi-cloud-key"
}

variable "aws_kms_key_description" {
  description = "Description for the AWS KMS key"
  type        = string
  default     = "Multi-cloud KMS key"
}

# Azure variables
variable "azure_location" {
  description = "Azure location for deployment"
  type        = string
  default     = "East US"
}

variable "azure_resource_group" {
  description = "Azure resource group name"
  type        = string
  default     = "tero-rg"
}

variable "azure_vm_size" {
  description = "Azure VM size"
  type        = string
  default     = "Standard_DS1_v2"
}

variable "azure_admin_username" {
  description = "Admin username for Azure VM"
  type        = string
  default     = "adminuser"
}

variable "azure_admin_password" {
  description = "Admin password for Azure VM"
  type        = string
  sensitive   = true
  default     = ""
}

variable "azure_subnet_id" {
  description = "Azure subnet ID for VM"
  type        = string
  default     = ""
}

# GCP variables
variable "gcp_project" {
  description = "GCP project ID"
  type        = string
  default     = ""
}

variable "gcp_region" {
  description = "GCP region for deployment"
  type        = string
  default     = "us-central1"
}

variable "gcp_zone" {
  description = "GCP zone for deployment"
  type        = string
  default     = "us-central1-a"
}

variable "gcp_machine_type" {
  description = "GCP machine type"
  type        = string
  default     = "e2-micro"
}

variable "gcp_network" {
  description = "GCP network name"
  type        = string
  default     = "default"
}

/*

**Description**: Defines variables for the `multi-cloud-project` template, supporting AWS, Azure, and GCP resources.

**Use Cases**:
- Customizing multi-cloud configurations.
- Supporting quick setup with defaults.
- Handling sensitive data securely. */