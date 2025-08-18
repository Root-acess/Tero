
# modules/compute/lambda/variables.tf
# Input variables for Lambda module

variable "function_name" {
  description = "Name of the Lambda function"
  type        = string
}

variable "handler" {
  description = "Lambda function handler"
  type        = string
}

variable "runtime" {
  description = "Lambda runtime environment"
  type        = string
  default     = "python3.9"
}

variable "filename" {
  description = "Path to the Lambda deployment package"
  type        = string
}

variable "env" {
  description = "Deployment environment"
  type        = string
}

/*

**Description**: Defines inputs for the Lambda module, including function name and deployment package.

**Use Cases**:
- Customizing Lambda function configurations.
- Supporting multiple runtimes (e.g., Python, Node.js). */