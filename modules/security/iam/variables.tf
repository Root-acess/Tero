
# modules/security/iam/variables.tf
# Input variables for IAM module

variable "role_name" {
  description = "Name of the IAM role"
  type        = string
}

variable "policy_arns" {
  description = "List of policy ARNs to attach to the role"
  type        = list(string)
  default     = []
}

variable "env" {
  description = "Deployment environment"
  type        = string
}

/*

**Description**: Defines inputs for the IAM module, including role name and policy ARNs.

**Use Cases**:
- Customizing IAM role configurations.
- Supporting flexible policy attachments. */