#
# aws_route_table
#   * https://www.terraform.io/docs/providers/aws/r/route_table.html
#
resource "aws_route_table" "route_table" {
  vpc_id = "${aws_vpc.main_vpc.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.internet_gateway.id}"
  }

  tags {
    Name = "route_table"
  }
}
