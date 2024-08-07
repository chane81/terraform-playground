# vpc
data "aws_vpc" "vpc" {
  id = var.vpc_id
}

# ami
data "aws_ami" "amazon-linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name = "name"
    # values = ["amzn-ami-hvm-*-x86_64-ebs"]
    # values = ["amzn2-ami-*-hvm-*-x86_64-gp2"]
    values = ["al2023-ami-*-x86_64"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}
