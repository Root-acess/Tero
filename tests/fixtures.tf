
# test/fixtures.tf
# Reusable Terraform fixtures for testing Tero modules

provider "aws" {
  region = var.region
}

resource "aws_vpc" "test" {
  cidr_block = "10.1.0.0/16"
  tags = {
    Name        = "test-vpc"
    Environment = var.environment
  }
}

resource "aws_subnet" "test" {
  count             = 2
  vpc_id            = aws_vpc.test.id
  cidr_block        = "10.1.${count.index}.0/24"
  availability_zone = "${var.region}${count.index == 0 ? "a" : "b"}"
  tags = {
    Name        = "test-subnet-${count.index}"
    Environment = var.environment
  }
}

resource "aws_security_group" "test" {
  name        = "test-sg"
  description = "Test security group"
  vpc_id      = aws_vpc.test.id

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    self        = true
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "test-sg"
    Environment = var.environment
  }
}

variable "region" {
  description = "AWS region for testing"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Deployment environment for testing"
  type        = string
  default     = "test"
}

/*

**Description**: Defines a minimal VPC, subnets, and security group as fixtures for testing Tero modules.

**Use Cases**:
- Providing a consistent test environment for module tests.
- Supporting integration testing with `test-module.sh`.
- Ensuring isolated resource creation for testing. */