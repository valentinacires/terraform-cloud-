data "terraform_remote_state" "vpc" {
  backend = "remote"

  config = {
    organization = "valentinacires"
    workspaces = {
      name = "vpc"
    }
  }
}
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}









