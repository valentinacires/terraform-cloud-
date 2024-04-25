provider "aws" {
  region     = "us-east-1"
  access_key = "AKIA5FTZBCSFEHOFNPWF"
  secret_key = "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"
}

resource "aws_instance" "myec2" {
    ami = "ami-00c39f71452c08778"
    instance_type = "t2.micro"
}