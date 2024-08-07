output "environment" {
  description = "environment - dev/staging/prod"
  value       = var.environment
}

output "ip_range_prefix" {
  description = "ip range prefix"
  value       = var.ip_range_prefix
}

output "vpc_name" {
  description = "vpc name"
  value       = module.vpc.name
}

output "vpc_id" {
  description = "vpc id"
  value       = module.vpc.vpc_id
}

output "vpc_cidr" {
  description = "cidr"
  value       = module.vpc.vpc_cidr_block
}

output "vpc_public_subnets" {
  description = "pulbic subnet"
  value       = module.vpc.public_subnets
}

output "vpc_private_subnets" {
  description = "pulbic subnet"
  value       = module.vpc.private_subnets
}

output "vpc_public_subnet_arns" {
  description = "pulbic subnet arns"
  value       = module.vpc.public_subnet_arns
}

output "vpc_private_subnet_arns" {
  description = "private subnet arns"
  value       = module.vpc.private_subnet_arns
}

