```hcl
# examples/advanced-cluster/variables.tf
# Input variables for the advanced cluster example

variable "region" {
  description = "AWS region for deployment"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Deployment environment (dev/stage/prod)"
  type        = string
  default     = "prod"
  validation {
    condition     = contains(["dev", "stage", "prod"], var.environment)
    error_message = "Environment must be dev, stage, or prod"
  }
}

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
  default     = "cluster-vpc"
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "eks_cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "tero-cluster"
}

variable "eks_node_group_size" {
  description = "Desired size of the EKS node group"
  type        = number
  default     = 2
}

variable "alb_name" {
  description = "Name of the Application Load Balancer"
  type        = string
  default     = "tero-alb"
}
```

**Description**: Defines variables for the advanced cluster, with defaults optimized for a production environment. Includes EKS-specific variables like cluster name and node group size.

**Use Cases**:
- Customizing EKS cluster and ALB configurations.
- Supporting production-grade deployments with scalable defaults.