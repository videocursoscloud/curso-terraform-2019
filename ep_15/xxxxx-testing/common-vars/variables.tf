variable "project_name" {}
variable "environment" {}

variable "region" {}

variable "vpc_cidr_block" {}

variable "vpc_azs" {
  type = "list"
}

variable "vpc_public_subnet_cidrs" {
  type = "list"
}

variable "vpc_private_subnet_cidrs" {
  type = "list"
}
