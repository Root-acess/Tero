
# modules/compute/variables.tf
# Input variables for the compute module aggregator

variable "lambda_function_name" {
  description = "Name of the Lambda function"
  type        = string
  default     = "tero-lambda"
}

variable "lambda_role_arn" {
  description = "ARN of the IAM role for Lambda"
  type        = string
  default     = ""
}

variable "lambda_handler" {
  description = "Handler for the Lambda function"
  type        = string
  default     = "index.handler"
}

variable "lambda_runtime" {
  description = "Runtime for the Lambda function"
  type        = string
  default     = "nodejs20.x"
}

variable "eks_cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "tero-eks"
}

variable "subnet_ids" {
  description = "List of subnet IDs for EKS"
  type        = list(string)
  default     = []
}

variable "ecs_cluster_name" {
  description = "Name of the ECS cluster"
  type        = string
  default     = "tero-ecs"
}

variable "env" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

/*

**Description**: Consolidates variables for `lambda`, `eks`, and `ecs` submodules, providing defaults for quick setup.

**Use Cases**:
- Centralizing configuration for compute resources.
- Supporting flexible Lambda, EKS, and ECS setups.
- Ensuring consistent environment tagging. */