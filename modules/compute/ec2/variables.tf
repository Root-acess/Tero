
# modules/compute/ec2/variables.tf
# Input variables for EC2 module

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
}

/*

**Description**: Defines inputs for the EC2 module, including required VPC and subnet IDs, and optional instance type and count.

**Use Cases**:
- Customizing instance configurations without modifying the module.
- Supporting variable instance counts for scalability.

*/