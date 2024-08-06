output "environment" {
  description = "environment - dev/staging/prod"
  value       = module.vpc.environment
}

output "ip_range_prefix" {
  description = "ip range prefix"
  value       = module.vpc.ip_range_prefix
}

output "vpc_name" {
  description = "vpc name"
  value       = module.vpc.vpc_name
}

output "vpc_id" {
  description = "vpc id"
  value       = module.vpc.vpc_id
}

output "vpc_cidr" {
  description = "cidr"
  value       = module.vpc.vpc_cidr
}

output "vpc_public_subnets" {
  description = "pulbic subnet"
  value       = module.vpc.vpc_public_subnets
}

output "vpc_private_subnets" {
  description = "pulbic subnet"
  value       = module.vpc.vpc_private_subnets
}

# public subnet arns
output "vpc_public_subnet_arns" {
  description = "pulbic subnet arns"
  value       = module.vpc.vpc_public_subnet_arns
}

# private subnet arns
output "vpc_private_subnet_arns" {
  description = "private subnet arns"
  value       = module.vpc.vpc_private_subnet_arns
}

