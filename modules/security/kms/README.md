# KMS Module

This module provisions an AWS KMS key with an alias and key rotation enabled.

## Inputs
- `key_alias` (string, required): Alias for the KMS key.
- `key_description` (string, required): Description for the KMS key.
- `env` (string, required): Deployment environment.

## Outputs
- `key_arn`: ARN of the KMS key.
- `key_id`: ID of the KMS key.
- `alias_name`: Alias of the KMS key.

## Usage
```hcl
module "kms" {
  source          = "../../modules/security/kms"
  key_alias       = "alias/my-app-key"
  key_description = "Key for app encryption"
  env             = "prod"
}