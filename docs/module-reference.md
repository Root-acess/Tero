# Tero Module Reference

This document provides comprehensive documentation for the core modules in the Tero Framework, including their purpose, inputs, outputs, and usage examples.

## 📋 Overview

Tero modules are reusable, standardized infrastructure components located in `lib/modules/[category]/[module]`. Each module includes a `README.md` with specific details, but this reference consolidates key information for quick access.

## 🧩 Core Modules

### Networking

#### VPC
- **Path**: `lib/modules/networking/vpc`
- **Description**: Creates a VPC with subnets, route tables, and optional NAT gateways.
- **Inputs**:
  - `name` (string, required): VPC name (e.g., `core-network`).
  - `cidr_block` (string, required): VPC CIDR (e.g., `10.100.0.0/20`).
  - `env` (string, required): Environment (e.g., `prod`, `dev`).
  - `azs` (list(string), required): Availability zones (e.g., `["us-east-1a", "us-east-1b"]`).
  - `enable_nat` (bool, optional, default: `true`): Enable NAT gateways.
- **Outputs**:
  - `vpc_id`: VPC ID.
  - `subnet_ids`: List of subnet IDs.
  - `route_table_ids`: List of route table IDs.
- **Example**:
  ```hcl
  module "network" {
    source     = "lib/modules/networking/vpc"
    name       = "core-network"
    cidr_block = "10.100.0.0/20"
    env        = "prod"
    azs        = ["us-east-1a", "us-east-1b", "us-east-1c"]
  }
  ```

#### Load Balancer
- **Path**: `lib/modules/networking/alb`
- **Description**: Deploys an Application Load Balancer with listeners and target groups.
- **Inputs**:
  - `vpc_id` (string, required): VPC ID from VPC module.
  - `subnet_ids` (list(string), required): Subnet IDs for ALB.
  - `name` (string, required): ALB name.
- **Outputs**:
  - `alb_arn`: ALB ARN.
  - `dns_name`: ALB DNS name.
- **Example**:
  ```hcl
  module "alb" {
    source     = "lib/modules/networking/alb"
    vpc_id     = module.network.vpc_id
    subnet_ids = module.network.subnet_ids
    name       = "prod-alb"
  }
  ```

### Compute

#### EC2
- **Path**: `lib/modules/compute/ec2`
- **Description**: Provisions EC2 instances with auto-scaling and security groups.
- **Inputs**:
  - `vpc_id` (string, required): VPC ID.
  - `subnet_ids` (list(string), required): Subnet IDs.
  - `instance_type` (string, optional, default: `t3.micro`): EC2 instance type.
  - `ami` (string, required): AMI ID.
- **Outputs**:
  - `instance_ids`: List of EC2 instance IDs.
  - `security_group_id`: Associated security group ID.
- **Example**:
  ```hcl
  module "ec2" {
    source       = "lib/modules/compute/ec2"
    vpc_id       = module.network.vpc_id
    subnet_ids   = module.network.subnet_ids
    instance_type = "t3.medium"
    ami          = "ami-1234567890abcdef0"
  }
  ```

### Database

#### RDS
- **Path**: `lib/modules/database/rds`
- **Description**: Deploys an RDS instance with encryption and backup.
- **Inputs**:
  - `vpc_id` (string, required): VPC ID.
  - `subnet_ids` (list(string), required): Subnet IDs.
  - `engine` (string, required): Database engine (e.g., `postgres`, `mysql`).
  - `instance_class` (string, optional, default: `db.t3.micro`): Instance class.
- **Outputs**:
  - `endpoint`: RDS endpoint.
  - `arn`: RDS ARN.
- **Example**:
  ```hcl
  module "rds" {
    source        = "lib/modules/database/rds"
    vpc_id        = module.network.vpc_id
    subnet_ids    = module.network.subnet_ids
    engine        = "postgres"
    instance_class = "db.t3.medium"
  }
  ```

### Security

#### Baseline
- **Path**: `lib/modules/security/baseline`
- **Description**: Configures IAM roles, security groups, and KMS keys with least-privilege principles.
- **Inputs**:
  - `vpc_id` (string, required): VPC ID.
  - `env` (string, required): Environment.
- **Outputs**:
  - `iam_role_arn`: IAM role ARN.
  - `security_group_id`: Default security group ID.
- **Example**:
  ```hcl
  module "security" {
    source = "lib/modules/security/baseline"
    vpc_id = module.network.vpc_id
    env    = "prod"
  }
  ```

### Data

#### S3
- **Path**: `lib/modules/data/s3`
- **Description**: Creates an S3 bucket with encryption and versioning.
- **Inputs**:
  - `bucket_name` (string, required): Unique bucket name.
  - `env` (string, required): Environment.
- **Outputs**:
  - `bucket_arn`: S3 bucket ARN.
  - `bucket_name`: S3 bucket name.
- **Example**:
  ```hcl
  module "s3" {
    source      = "lib/modules/data/s3"
    bucket_name = "prod-data-bucket"
    env         = "prod"
  }
  ```

## 📚 Additional Resources

- **Module Directory**: Explore `lib/modules` for all available modules.
- **Best Practices**: See [best-practices.md](best-practices.md) for naming and configuration standards.
- **Contributing**: Add new modules via [CONTRIBUTING.md](CONTRIBUTING.md).