
# modules/security/examples/basic/variables.tf
# Variables for the basic security example

variable "iam_role_name" {
  description = "Name of the IAM role"
  type        = string
  default     = "basic-security-role"
}

variable "iam_policy_arns" {
  description = "List of policy ARNs to attach to the IAM role"
  type        = list(string)
  default     = ["arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"]
}

variable "kms_key_alias" {
  description = "Alias for the KMS key"
  type        = string
  default     = "alias/basic-security-key"
}

variable "kms_key_description" {
  description = "Description for the KMS key"
  type        = string
  default     = "Basic KMS key for security example"
}

variable "env" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}
/*
**Description**: Provides variables for the basic `security` example, mirroring the inputs of the `security` module aggregator with defaults for ease of use.

**Use Cases**:
- Customizing the example without modifying `main.tf`.
- Simplifying testing with default values suitable for development environments.
- Supporting quick prototyping of IAM and KMS setups. */