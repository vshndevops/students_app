provider "aws" {
  region     = "us-east-1"

}

#vpc

resource "aws_vpc" "devops" {
  cidr_block = "172.16.0.0/24"
  tags = {
    Name = "DevOpsLabs"
  }

}
