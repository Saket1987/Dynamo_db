resource "aws_dynamodb_table" "example_table" {
  name = var.table_name

  attribute {
    name = var.attribute_name
    type = local.attribute_type
  }

  key_schema {
    attribute_name = var.attribute_name
    key_type       = "HASH"
  }

  billing_mode = "PAY_PER_REQUEST"
}

