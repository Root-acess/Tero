
# modules/networking/examples/basic/variables.tf
# Variables for the basic networking example

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

**Description**: Provides variables for the basic `networking` example, mirroring the module’s inputs with defaults.

**Use Cases**:
- Customizing the example without modifying `main.tf`.
- Simplifying testing with default values.
- Supporting quick prototyping of networking resources. */