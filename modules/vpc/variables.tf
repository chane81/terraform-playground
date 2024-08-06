# 환경 - dev, staging, prod
variable "environment" {
  description = "environment - dev, stage, prod"
  type        = string

  default = "dev"
}

variable "ip_range_prefix" {
  description = "ip range prefix - 10.10"
  type        = string

  default = "10.10"
}
