// In this file, we create the DynamoDB table using the aws_dynamodb_table resource block. We reference our table_name variable to set the name of the table. We also define an attribute with the name specified in our attribute_name variable and type specified in our local.attribute_type variable.
//We then define a key schema with the attribute_name as the partition key and set the key_type to "HASH". Finally, we set the billing mode to "PAY_PER_REQUEST".

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

