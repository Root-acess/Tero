
# modules/database/dynamodb/main.tf
# Provisions a DynamoDB table

resource "aws_dynamodb_table" "table" {
  name           = "${local.name_prefix}-dynamodb"
  billing_mode   = var.billing_mode
  read_capacity  = var.billing_mode == "PROVISIONED" ? var.read_capacity : null
  write_capacity = var.billing_mode == "PROVISIONED" ? var.write_capacity : null
  hash_key       = var.hash_key

  attribute {
    name = var.hash_key
    type = "S"
  }

  tags = local.common_tags
}
