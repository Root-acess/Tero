
# modules/compute/ec2/examples/basic/variables.tf
# Variables for the basic EC2 example

variable "vpc_id" {
  description = "ID of the VPC"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs"
  type        = list(string)
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "ami" {
  description = "AMI ID for EC2 instances"
  type        = string
}

variable "instance_count" {
  description = "Number of EC2 instances"
  type        = number
  default     = 1
}

variable "env" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

/*
**Description**: Defines variables for the basic EC2 example, mirroring the module’s inputs.

**Use Cases**:
- Customizing the example without modifying `main.tf`.
- Providing defaults for quick testing.
*/