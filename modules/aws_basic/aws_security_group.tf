#
# aws_security_group
#   * https://www.terraform.io/docs/providers/aws/r/security_group.html
#
resource "aws_security_group" "security_group" {
  name = "security_group"
  vpc_id = "${aws_vpc.main_vpc.id}"
  description = "allow http and ssh from anyware"

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Name = "security_group"
  }
}
