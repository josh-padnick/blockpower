provider "aws" {
  # The AWS region in which all resources will be created
  region = "${var.aws_region}"

  # Only these AWS Account IDs may be operated on by this template
  allowed_account_ids = ["${var.aws_account_id}"]
}

terraform {
  # The configuration for this remote state backend will be filled in by Terragrunt
  backend "s3" {}
}

# ---------------------------------------------------------------------------------------------------------------------
# CREATE THE DYNAMODB TABLE
# ---------------------------------------------------------------------------------------------------------------------

resource "aws_dynamodb_table" "main" {
  name = "${var.table_name}"
  read_capacity  = "${var.read_capacity}"
  write_capacity = "${var.write_capacity}"
  hash_key = "${var.hash_key_attribute_name}"

  attribute {
    name = "${var.hash_key_attribute_name}"
    type = "${var.hash_key_attribute_type}"
  }
}
