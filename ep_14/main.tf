module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "1.53.0"

  name = "my-vpc"
  cidr = "192.168.0.0/16"

  azs             = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
  private_subnets = ["192.168.1.0/24", "192.168.2.0/24", "192.168.3.0/24"]
  public_subnets  = ["192.168.10.0/24", "192.168.20.0/24", "192.168.30.0/24"]

  enable_vpn_gateway = false
  enable_nat_gateway = false

  tags = {
    Terraform = "true"
    Environment = "testing"
  }
}


module "webserver" {
  source  = "videocursoscloud/ec2-with-eip/module"
  version = "1.0.3"

  ami = "ami-00035f41c82244dab"
  instance_type = "t2.micro"
  key_name = "microserver"
  vpc_id = "${module.vpc.vpc_id}"
  project_name = "webserver"
  environment = "testing"
  subnet_id = "${element(module.vpc.public_subnets,0)}"
}



