module "bestion" {
  source = "../../../modules/bestion"

  environment    = "dev"
  name           = "charles"
  vpc_id         = local.vpc.vpc_id
  public_subnets = local.vpc.vpc_public_subnets
}
