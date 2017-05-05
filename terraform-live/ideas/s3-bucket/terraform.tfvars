# Use Terragrunt to invoke a Terraform module
terragrunt = {
  include {
    path = "${find_in_parent_folders()}"
  }

  terraform {
    source = "../../../terraform-modules/s3-bucket"
  }
}

aws_region = "us-west-2"
aws_account_id = "124185122189"
serverless_service_name = "ideas"