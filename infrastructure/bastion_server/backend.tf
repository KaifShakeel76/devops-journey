data "terraform_remote_state" "network" {
  backend = "s3"
  config = {
    bucket = "staging-tf-state"
    key    = "backend/network/terraform.tfstate"
    region = "ap-south-1"
  }
}

terraform {
  backend "s3" {
    bucket  = "staging-tf-state"
    key     = "backend/bastion/terraform.tfstate"
    region  = "ap-south-1"
    encrypt = true
  }
}

