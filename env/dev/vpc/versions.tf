terraform {
  required_version = ">= 1.9.0"

  backend "s3" {
    bucket = "terraform-infra-playground-tfstate"
    key    = "dev/vpc/terraform.tfstate"
    region = "ap-northeast-2"
    dynamodb_table = "terraform-lock"
  }
}