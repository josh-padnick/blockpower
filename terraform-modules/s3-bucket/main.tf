provider "aws" {
  # The AWS region in which all resources will be created
  region = "${var.aws_region}"

  # Only these AWS Account IDs may be operated on by this template
  allowed_account_ids = ["${var.aws_account_id}"]
}

# ---------------------------------------------------------------------------------------------------------------------
# CREATE THE S3 BUCKET
# ---------------------------------------------------------------------------------------------------------------------

resource "aws_s3_bucket" "main" {
  bucket = "${var.bucket_name_prefix}${var.aws_region}.${var.serverless_service_name}"
  acl    = "private"
}
