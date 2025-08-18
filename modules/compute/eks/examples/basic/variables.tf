
# modules/compute/eks/examples/basic/variables.tf
# Variables for the basic EKS example

variable "vpc_id" {
  description = "ID of the VPC"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs"
  type        = list(string)
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "basic-cluster"
}

variable "node_group_size" {
  description = "Desired size of the EKS node group"
  type        = number
  default     = 2
}

variable "env" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

/*

**Description**: Variables for the basic EKS example, with defaults for quick testing.

**Use Cases**:
- Customizing the example configuration.
- Simplifying EKS deployment for demos.

*/