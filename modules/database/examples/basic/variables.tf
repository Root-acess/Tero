
# modules/database/examples/basic/variables.tf
# Variables for the basic database example

variable "vpc_id" {
  description = "ID of the VPC for RDS"
  type        = string
  default     = ""
}

variable "subnet_ids" {
  description = "List of subnet IDs for RDS"
  type        = list(string)
  default     = []
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

variable "env" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

/*

**Description**: Provides variables for the basic `database` example, mirroring the module’s inputs with defaults.

**Use Cases**:
- Customizing the example without modifying `main.tf`.
- Simplifying testing with default values.
- Supporting quick prototyping of database resources. */