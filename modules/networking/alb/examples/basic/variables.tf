
# modules/networking/alb/examples/basic/variables.tf
# Variables for the basic ALB example

variable "vpc_id" {
  description = "ID of the VPC"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs"
  type        = list(string)
}

variable "name" {
  description = "Name of the ALB"
  type        = string
  default     = "basic-alb"
}

variable "env" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}
/*

**Description**: Variables for the basic ALB example.

**Use Cases**:
- Customizing the example configuration.
- Simplifying ALB testing. */