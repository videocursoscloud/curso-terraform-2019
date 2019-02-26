terraform {
  backend "s3" {
    bucket = "terraform-vcc-ep-15"
    key    = "production/vpc/state.tfstate"
    region = "eu-west-1"
  }
}


data "terraform_remote_state" "common" {
  backend = "s3"
  config {
    bucket = "terraform-vcc-ep-15"
    key    = "production/common-vars/state.tfstate"
    region = "eu-west-1"
  }
}

