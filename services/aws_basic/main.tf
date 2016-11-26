#
# Terraform
#   * https://www.terraform.io/docs/
#
module "aws_basic" {
  source = "../../modules/aws_basic"

  service = "aws_basic"
}
