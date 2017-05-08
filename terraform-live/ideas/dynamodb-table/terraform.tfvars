# Use Terragrunt to invoke a Terraform module
terragrunt = {
  include {
    path = "${find_in_parent_folders()}"
  }

  terraform {
    source = "../../../terraform-modules/dynamodb-table-hash-key"
  }
}

aws_region = "us-west-2"
aws_account_id = "124185122189"
table_name = "ideas"
hash_key_attribute_name = "id"
hash_key_attribute_type = "S"