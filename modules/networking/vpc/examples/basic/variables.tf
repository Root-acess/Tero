
# modules/networking/vpc/examples/basic/variables.tf
# Variables for the basic VPC example

variable "name" {
  description = "Name of the VPC"
  type        = string
  default     = "basic-vpc"
}

variable "cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "azs" {
  description = "List of availability zones"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

variable "enable_nat" {
  description = "Enable NAT gateways"
  type        = bool
  default     = false
}

variable "env" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

/*
**Description**: Variables for the basic VPC example.

**Use Cases**:
- Customizing the example configuration.
- Simplifying VPC testing. */