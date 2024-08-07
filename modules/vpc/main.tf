module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> 5.12"

  name = "playground-vpc-${local.environment}"
  cidr = "${local.ip_range_prefix}.0.0/16"

  azs = data.aws_availability_zones.available.names
  public_subnets = [
    "${local.ip_range_prefix}.200.0/22",
    "${local.ip_range_prefix}.204.0/22",
    "${local.ip_range_prefix}.208.0/22",
    "${local.ip_range_prefix}.212.0/22"
  ]
  private_subnets = [
    "${local.ip_range_prefix}.100.0/22",
    "${local.ip_range_prefix}.104.0/22",
    "${local.ip_range_prefix}.108.0/22",
    "${local.ip_range_prefix}.112.0/22"
  ]

  enable_nat_gateway = false
  enable_vpn_gateway = false

  tags = {
    Terraform   = "true"
    Environment = var.environment
  }
}
