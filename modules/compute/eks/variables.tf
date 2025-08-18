
# modules/compute/eks/variables.tf
# Input variables for EKS module

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
}

variable "node_group_size" {
  description = "Desired size of the EKS node group"
  type        = number
  default     = 2
}

variable "env" {
  description = "Deployment environment"
  type        = string
}

/*

**Description**: Defines inputs for the EKS module, including cluster name and node group size.

**Use Cases**:
- Customizing EKS cluster configurations.
- Scaling node groups based on workload needs. */