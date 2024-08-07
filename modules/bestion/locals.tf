resource "random_string" "postfix" {
  length  = 4
  special = false
  lower   = true
  upper   = false
}

locals {
  environment = var.environment
  postfix     = random_string.postfix.result

  # name
  key_pair_name       = "${var.name}-kp-${local.postfix}-${var.environment}"
  ec2_bestion_name    = "${var.name}-bestion-${local.postfix}-${var.environment}"
  security_group_name = "${var.name}-sgp-${local.postfix}-${var.environment}"

  # vpc id
  vpc_id = var.vpc_id

  # public subnet ids
  public_subnets = var.public_subnets
}
