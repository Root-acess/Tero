
# modules/networking/alb/variables.tf
# Input variables for ALB module

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
}

variable "env" {
  description = "Deployment environment"
  type        = string
}
/*
**Description**: Defines inputs for the ALB module.

**Use Cases**:
- Customizing ALB configurations.
- Supporting multi-subnet deployments. */