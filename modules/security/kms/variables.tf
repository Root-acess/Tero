
# modules/security/kms/variables.tf
# Input variables for KMS module

variable "key_alias" {
  description = "Alias for the KMS key"
  type        = string
}

variable "key_description" {
  description = "Description for the KMS key"
  type        = string
}

variable "env" {
  description = "Deployment environment"
  type        = string
}

/*

**Description**: Defines inputs for the KMS module, including key alias and description.

**Use Cases**:
- Customizing KMS key configurations.
- Supporting descriptive metadata for keys. */