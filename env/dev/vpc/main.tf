module "vpc" {
  source  = "../../../modules/vpc"

  environment = "dev"
  ip_range_prefix = "10.10"
}