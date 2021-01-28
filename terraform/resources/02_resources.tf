## put your resourcs to deploy here


## put your resourcs to deploy here

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = var.resource_name
  cidr = "10.0.0.0/16"

  azs             = ["${var.region_1}a", "${var.region_1}b", "${var.region_1}c"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  enable_nat_gateway = true
  #enable_vpn_gateway = true

  tags = var.tags
}

data "aws_subnet_ids" "private" {
  vpc_id = module.vpc.vpc_id
}
