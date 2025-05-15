terraform {
  backend "s3" {
    bucket  = "fanclash-staging-tf-state"
    key     = "fanclash/backend/network/terraform.tfstate"
    region  = "ap-south-1"
    encrypt = true

  }
}
