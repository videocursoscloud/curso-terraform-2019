resource "aws_eip" "eip" {
  vpc = true

  instance = "${aws_instance.web.id}"

  tags {
    Name = "${var.project_name}-${terraform.workspace}"
  }
}
