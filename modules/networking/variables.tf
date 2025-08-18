
# modules/networking/variables.tf
# Input variables for the networking module aggregator

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_count" {
  description = "Number of subnets to create"
  type        = number
  default     = 2
}

variable "env" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

/*

**Description**: Consolidates variables for `vpc` and `subnets` submodules, providing defaults for quick setup.

**Use Cases**:
- Centralizing configuration for networking resources.
- Supporting flexible VPC and subnet setups.
- Ensuring consistent environment tagging. */