
# modules/database/dynamodb/examples/basic/variables.tf
# Variables for the basic DynamoDB example

variable "table_name" {
  description = "Name of the DynamoDB table"
  type        = string
  default     = "basic-table"
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
  default     = "dev"
}

/*

**Description**: Provides variables for the basic DynamoDB example, mirroring the module’s inputs with defaults for ease of use.

**Use Cases**:
- Customizing the example without modifying `main.tf`.
- Simplifying testing with default values suitable for development environments.
- Supporting quick prototyping of DynamoDB setups. */