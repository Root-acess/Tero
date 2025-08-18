
# modules/security/variables.tf
# Input variables for the security module aggregator

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

**Description**: Consolidates variables for the `iam` and `kms` modules, providing defaults for quick setup and ensuring consistency with Tero’s naming conventions.

**Use Cases**:
- Centralizing configuration for security resources.
- Supporting flexible IAM and KMS setups with defaults.
- Ensuring standardized environment tagging. */