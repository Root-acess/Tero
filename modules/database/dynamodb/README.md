# DynamoDB Module

This module provisions an AWS DynamoDB table.

## Inputs
- `table_name` (string, required): Name of the DynamoDB table.
- `billing_mode` (string, optional, default: `PAY_PER_REQUEST`): Billing mode.
- `read_capacity` (number, optional, default: `5`): Read capacity units.
- `write_capacity` (number, optional, default: `5`): Write capacity units.
- `hash_key` (string, optional, default: `id`): Hash key for the table.
- `env` (string, required): Deployment environment.

## Outputs
- `table_arn`: ARN of the DynamoDB table.
- `table_name`: Name of the DynamoDB
