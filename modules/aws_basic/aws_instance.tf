#
# aws_instance
#   * https://www.terraform.io/docs/providers/aws/r/instance.html
#
resource "aws_instance" "web" {
  ami = "${var.images["ap-northeast-1"]}"
  instance_type = "t2.micro"

  vpc_security_group_ids = [
    "${aws_security_group.security_group.id}",
  ]

  subnet_id = "${aws_subnet.subnet_1.id}"
  associate_public_ip_address = "true"

  tags {
    Name = "web"
  }
}
