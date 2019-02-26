terraform {
  backend "s3" {
    bucket = "terraform-vcc-ep-15"
    key    = "testing/r53/state.tfstate"
    region = "eu-west-1"
  }
}


data "terraform_remote_state" "common" {
  backend = "s3"
  config {
    bucket = "terraform-vcc-ep-15"
    key    = "testing/common-vars/state.tfstate"
    region = "eu-west-1"
  }
}


data "terraform_remote_state" "vpc" {
  backend = "s3"
  config {
    bucket = "terraform-vcc-ep-15"
    key    = "testing/vpc/state.tfstate"
    region = "eu-west-1"
  }
}

