
# modules/security/kms/examples/basic/variables.tf
# Variables for the basic KMS example

variable "key_alias" {
  description = "Alias for the KMS key"
  type        = string
  default     = "alias/basic-key"
}

variable "key_description" {
  description = "Description for the KMS key"
  type        = string
  default     = "Basic KMS key"
}

variable "env" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

/*

**Description**: Variables for the basic KMS example.

**Use Cases**:
- Customizing the example configuration.
- Simplifying KMS testing. */