
# modules/compute/lambda/examples/basic/variables.tf
# Variables for the basic Lambda example

variable "function_name" {
  description = "Name of the Lambda function"
  type        = string
  default     = "basic-function"
}

variable "handler" {
  description = "Lambda function handler"
  type        = string
  default     = "index.handler"
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
  default     = "dev"
}
/*

**Description**: Variables for the basic Lambda example.

**Use Cases**:
- Customizing the example configuration.
- Simplifying Lambda testing.  */