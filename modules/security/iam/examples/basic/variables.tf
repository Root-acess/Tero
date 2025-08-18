
# modules/security/iam/examples/basic/variables.tf
# Variables for the basic IAM example

variable "role_name" {
  description = "Name of the IAM role"
  type        = string
  default     = "basic-role"
}

variable "policy_arns" {
  description = "List of policy ARNs to attach to the role"
  type        = list(string)
  default     = ["arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"]
}

variable "env" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}
/*

**Description**: Variables for the basic IAM example.

**Use Cases**:
- Customizing the example configuration.
- Simplifying IAM testing. */