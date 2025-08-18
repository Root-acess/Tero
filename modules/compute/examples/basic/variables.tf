
# modules/compute/examples/basic/variables.tf
# Variables for the basic compute example

variable "lambda_function_name" {
  description = "Name of the Lambda function"
  type        = string
  default     = "basic-lambda"
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
  default     = "basic-eks"
}

variable "subnet_ids" {
  description = "List of subnet IDs for EKS"
  type        = list(string)
  default     = []
}

variable "ecs_cluster_name" {
  description = "Name of the ECS cluster"
  type        = string
  default     = "basic-ecs"
}

variable "env" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}
/*

**Description**: Provides variables for the basic `compute` example, mirroring the module’s inputs with defaults.

**Use Cases**:
- Customizing the example without modifying `main.tf`.
- Simplifying testing with default values.
- Supporting quick prototyping of compute resources. */