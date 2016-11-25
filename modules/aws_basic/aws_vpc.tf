#
# aws_vpc
#   * https://www.terraform.io/docs/providers/aws/r/vpc.html
#
resource "aws_vpc" "main_vpc" {
  cidr_block = "10.0.0.0/16"
  instance_tenancy = "default"
  enable_dns_support = "true"
  enable_dns_hostnames = "false"

  tags {
    Name = "main_vpc"
  }
}
