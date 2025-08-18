
# modules/database/rds/variables.tf
# Input variables for RDS module

variable "vpc_id" {
  description = "ID of the VPC"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs"
  type        = list(string)
}

variable "engine" {
  description = "RDS database engine"
  type        = string
  default     = "postgres"
}

variable "instance_class" {
  description = "RDS instance class"
  type        = string
  default     = "db.t3.micro"
}

variable "allocated_storage" {
  description = "Allocated storage in GB"
  type        = number
  default     = 20
}

variable "db_username" {
  description = "Database username"
  type        = string
}

variable "db_password" {
  description = "Database password"
  type        = string
  sensitive   = true
}

variable "env" {
  description = "Deployment environment"
  type        = string
}

/*
**Description**: Defines inputs for the RDS module, including database credentials.

**Use Cases**:
- Customizing database configurations.
- Supporting multiple database engines. */