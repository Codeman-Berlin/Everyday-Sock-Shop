# VPC
module "vpc" {
  source                 = "terraform-aws-modules/vpc/aws"
  name                   = var.vpc_name
  cidr                   = var.vpc_cidr
  azs                    = [var.az1, var.az2]
  private_subnets        = [var.prv-sn1, var.prv-sn2, var.prv-sn3, var.prv-sn4]
  public_subnets         = [var.pub-sn1, var.pub-sn2]
  enable_nat_gateway     = true
  single_nat_gateway     = false
  one_nat_gateway_per_az = true
  tags = {
    Terraform = "true"
    Name      = "${var.name}-vpc"
  }
}