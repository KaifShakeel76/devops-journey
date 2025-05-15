terraform {
  backend "s3" {
    bucket  = "staging-tf-state"
    key     = "backend/network/terraform.tfstate"
    region  = "ap-south-1"
    encrypt = true

  }
}
