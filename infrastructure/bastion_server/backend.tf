data "terraform_remote_state" "network" {
  backend = "s3"
  config = {
    bucket = "fanclash-staging-tf-state"
    key    = "fanclash/backend/network/terraform.tfstate"
    region = "ap-south-1"
  }
}

terraform {
  backend "s3" {
    bucket  = "fanclash-staging-tf-state"
    key     = "fanclash/backend/bastion/terraform.tfstate"
    region  = "ap-south-1"
    encrypt = true
  }
}

