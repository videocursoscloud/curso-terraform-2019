terraform {
  backend "s3" {
    bucket = "terraform-vcc-ep-15"
    key    = "testing/common-vars/state.tfstate"
    region = "eu-west-1"
  }
}

