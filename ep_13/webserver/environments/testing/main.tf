module "webserver" {
  source = "github.com/videocursoscloud/terraform-module-ec2-with-eip"
  ami = "ami-00035f41c82244dab"
  instance_type = "t2.micro"
  key_name = "microserver"
  vpc_id = "vpc-0913547388f57caa4"
  project_name = "webserver"
  environment = "testing"
}



