# 환경 - dev, staging, prod
variable "environment" {
  description = "environment - dev, staging, prod"
  type        = string

  default = "dev"
}

# name
variable "name" {
  description = "name"
  type        = string

  default = "ec2"
}

# vpc id
variable "vpc_id" {
  description = "vpc id"
  type        = string
}

# public subnets
variable "public_subnets" {
  description = "public subnets"
  type        = list(string)
}

