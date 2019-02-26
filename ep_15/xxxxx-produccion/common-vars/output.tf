output "project_name" {
  value = "${var.project_name}"
}

output "environment" {
  value = "${var.environment}"
}

output "region" {
  value = "${var.region}"
}

output "vpc_cidr_block" {
  value = "${var.vpc_cidr_block}"
}

output "vpc_azs" {
  value = "${var.vpc_azs}"
}

output "vpc_public_subnet_cidrs" {
  value = "${var.vpc_public_subnet_cidrs}"
}

output "vpc_private_subnet_cidrs" {
  value = "${var.vpc_private_subnet_cidrs}"
}
