module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "1.53.0"

  name = "${data.terraform_remote_state.common.project_name}-${data.terraform_remote_state.common.environment}"
  cidr = "${data.terraform_remote_state.common.vpc_cidr_block}"

  azs             = ["${data.terraform_remote_state.common.vpc_azs}"]
  private_subnets = ["${data.terraform_remote_state.common.vpc_private_subnet_cidrs}"]
  public_subnets = ["${data.terraform_remote_state.common.vpc_public_subnet_cidrs}"]

  enable_vpn_gateway = false
  enable_nat_gateway = false

  tags = {
    Terraform = "true"
    Project = "${data.terraform_remote_state.common.project_name}"
    Environment = "${data.terraform_remote_state.common.environment}"
  }
}

