#
# aws_subnet
#   * https://www.terraform.io/docs/providers/aws/r/subnet.html
#
resource "aws_subnet" "subnet_1" {
  vpc_id = "${aws_vpc.main_vpc.id}"
  cidr_block = "10.0.0.0/24"
  availability_zone = "ap-northeast-1a"

  tags {
    Name = "${var.service}-subnet-1"
  }
}

resource "aws_subnet" "subnet_2" {
  vpc_id = "${aws_vpc.main_vpc.id}"
  cidr_block = "10.0.1.0/24"
  availability_zone = "ap-northeast-1c"

  tags {
    Name = "${var.service}-subnet-2"
  }
}
