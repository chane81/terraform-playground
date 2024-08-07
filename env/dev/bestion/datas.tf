data "terraform_remote_state" "vpc" {
  backend = "s3"

  config = {
    bucket = "terraform-infra-playground-tfstate"
    region = "ap-northeast-2"
    key    = "dev/vpc/terraform.tfstate"
  }
}
