
# modules/networking/vpc/variables.tf
# Input variables for VPC module

variable "name" {
  description = "Name of the VPC"
  type        = string
}

variable "cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "azs" {
  description = "List of availability zones"
  type        = list(string)
}

variable "enable_nat" {
  description = "Enable NAT gateways"
  type        = bool
  default     = false
}

variable "env" {
  description = "Deployment environment"
  type        = string
}

/*

**Description**: Defines inputs for the VPC module, including CIDR block and NAT gateway toggle.

**Use Cases**:
- Customizing VPC configurations.
- Supporting high-availability setups with multiple AZs. */