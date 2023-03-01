// In this file, we define two variables: table_name and attribute_name. These variables will be used in our main.tf file to create the DynamoDB table.
variable "table_name" {
  description = "The name of the DynamoDB table to create."
}

variable "attribute_name" {
  description = "The name of the string attribute to add to the DynamoDB table."
}
