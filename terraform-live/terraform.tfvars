terragrunt = {
  remote_state {
    backend = "s3"
    config {
      bucket     = "blockpower-terraform-state"
      key        = "${path_relative_to_include()}/terraform.tfstate"
      region     = "us-west-2"
      encrypt    = true
      lock_table = "blockpower-lock-table"
    }
  }
}