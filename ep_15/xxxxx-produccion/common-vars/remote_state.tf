terraform {
  backend "s3" {
    bucket = "terraform-vcc-ep-15"
    key    = "production/common-vars/state.tfstate"
    region = "eu-west-1"
  }
}

