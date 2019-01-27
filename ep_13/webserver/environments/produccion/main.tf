module "webserver" {
  source = "github.com/videocursoscloud/terraform-module-ec2-with-eip?ref=v1.0.2"
  ami = "ami-00035f41c82244dab"
  instance_type = "t2.micro"
  key_name = "microserver"
  vpc_id = "vpc-0913547388f57caa4"
  project_name = "webserver"
  environment = "produccion"
}



