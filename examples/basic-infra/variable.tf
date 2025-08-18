```hcl
# examples/basic-infra/variables.tf
# Input variables for the basic infrastructure example

variable "region" {
  description = "AWS region for deployment"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Deployment environment (dev/stage/prod)"
  type        = string
  default     = "dev"
  validation {
    condition     = contains(["dev", "stage", "prod"], var.environment)
    error_message = "Environment must be dev, stage, or prod"
  }
}

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
  default     = "basic-vpc"
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

variable "ec2_instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "ec2_ami" {
  description = "AMI ID for EC2 instances"
  type        = string
  default     = "ami-1234567890abcdef0" # Replace with valid AMI ID
}

variable "rds_engine" {
  description = "RDS database engine"
  type        = string
  default     = "postgres"
}

variable "rds_instance_class" {
  description = "RDS instance class"
  type        = string
  default     = "db.t3.micro"
}
```

**Description**: Defines input variables for the basic infrastructure, with defaults for quick setup. Variables align with module inputs, ensuring consistency and ease of use.

**Use Cases**:
- Customizing the infrastructure without modifying `main.tf`.
- Providing defaults for rapid prototyping.
- Enforcing validation (e.g., environment values) for reliability.