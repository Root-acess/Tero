# IAM Module

This module provisions an AWS IAM role with attached policies.

## Inputs
- `role_name` (string, required): Name of the IAM role.
- `policy_arns` (list(string), optional, default: `[]`): Policy ARNs to attach.
- `env` (string, required): Deployment environment.

## Outputs
- `role_arn`: ARN of the IAM role.
- `role_name`: Name of the IAM role.

## Usage
```hcl
module "iam" {
  source        = "../../modules/security/iam"
  role_name     = "app-role"
  policy_arns   = ["arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"]
  env           = "prod"
}