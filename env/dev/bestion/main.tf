module "bestion" {
  source = "../../../modules/bestion"

  environment    = "dev"
  name           = "charles"
  vpc_id         = data.terraform_remote_state.vpc.outputs.vpc_id
  public_subnets = data.terraform_remote_state.vpc.outputs.vpc_public_subnets
}
