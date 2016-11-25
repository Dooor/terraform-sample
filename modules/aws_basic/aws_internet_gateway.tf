#
# aws_internet_gateway
#   * https://www.terraform.io/docs/providers/aws/r/internet_gateway.html
#
resource "aws_internet_gateway" "internet_gateway" {
  vpc_id = "${aws_vpc.main_vpc.id}"

  tags {
    Name = "internet_gateway"
  }
}
