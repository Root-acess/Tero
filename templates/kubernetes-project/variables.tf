
# templates/kubernetes-project/variables.tf
# Variables for the Kubernetes Tero project

variable "region" {
  description = "AWS region for deployment"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

variable "project_name" {
  description = "Project name for resource naming"
  type        = string
  default     = "tero-kubernetes"
}

variable "eks_cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "kubernetes-eks"
}

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

variable "iam_role_name" {
  description = "Name of the IAM role"
  type        = string
  default     = "kubernetes-role"
}

variable "iam_policy_arns" {
  description = "List of policy ARNs to attach to the IAM role"
  type        = list(string)
  default     = ["arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"]
}

variable "kms_key_alias" {
  description = "Alias for the KMS key"
  type        = string
  default     = "alias/kubernetes-key"
}

variable "kms_key_description" {
  description = "Description for the KMS key"
  type        = string
  default     = "Kubernetes KMS key"
}

/*

**Description**: Defines variables for the `kubernetes-project` template, focusing on EKS.

**Use Cases**:
- Customizing EKS and networking configurations.
- Supporting quick setup with defaults.
- Handling sensitive data securely. */