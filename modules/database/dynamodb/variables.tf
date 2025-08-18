
# modules/database/dynamodb/variables.tf
# Input variables for DynamoDB module

variable "table_name" {
  description = "Name of the DynamoDB table"
  type        = string
}

variable "billing_mode" {
  description = "Billing mode for the table (PROVISIONED or PAY_PER_REQUEST)"
  type        = string
  default     = "PAY_PER_REQUEST"
}

variable "read_capacity" {
  description = "Read capacity units for provisioned mode"
  type        = number
  default     = 5
}

variable "write_capacity" {
  description = "Write capacity units for provisioned mode"
  type        = number
  default     = 5
}

variable "hash_key" {
  description = "Hash key for the table"
  type        = string
  default     = "id"
}

variable "env" {
  description = "Deployment environment"
  type        = string
}
