
# modules/database/dynamodb/examples/basic/main.tf
# Basic example for DynamoDB module

module "dynamodb" {
  source       = "../../"
  table_name   = "basic-table"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "id"
  env          = "dev"
}
/*
**Description**: Demonstrates a simple DynamoDB table deployment with pay-per-request billing, suitable for quick testing or prototyping.

**Use Cases**:
- Testing the DynamoDB module in isolation.
- Demonstrating minimal configuration for a NoSQL database.
- Serving as a starting point for developers new to Tero. */