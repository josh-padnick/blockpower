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

variable "table_name" {
  description = "The name of the DynamoDB table to create."
}

variable "hash_key_attribute_name" {
  description = "The name of the attribute to be used as part of a DyanmoDB Hash Key."
}

variable "hash_key_attribute_type" {
  description = "The type of the attribute to be used as part of a DyanmoDB Hash Key. Must be oneo of S, N, or B for (S)tring, (N)umber or (B)inary data."
}

# ---------------------------------------------------------------------------------------------------------------------
# MODULE DEFAULTS
# ---------------------------------------------------------------------------------------------------------------------

variable "read_capacity" {
  description = "The number of read units for this table."
  default = 1
}

variable "write_capacity" {
  description = "The number of write units for this table."
  default = 1
}