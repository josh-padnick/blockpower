# ---------------------------------------------------------------------------------------------------------------------
# MODULE PARAMETERS
# These variables are expected to be passed in by the operator
# ---------------------------------------------------------------------------------------------------------------------

variable "aws_region" {
  description = "The AWS region in which all resources will be created"
}

variable "aws_account_id" {
  description = "The ID of the AWS Account in which the IAM Groups will be created."
}

variable "serverless_service_name" {
  description = "The name of the Serverless service. Used to name the S3 Bucket"
}

# ---------------------------------------------------------------------------------------------------------------------
# MODULE DEFAULTS
# ---------------------------------------------------------------------------------------------------------------------

variable "bucket_name_prefix" {
  description = "The prefix to use for the S3 Bucket Name. The full Bucket name will include the var.serverless_service_name."
  default = "blockpower-deploys."
}