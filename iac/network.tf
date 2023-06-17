resource "aws_vpc" "devops" {
  cidr_block = "172.16.0.0/24"

}

resource "aws_subnet" "subnet" {
  vpc_id            = aws_vpc.devops.id
  cidr_block        = "172.16.0.0/26"
  availability_zone = "us-east-1a"

}

# Internet gateway

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.devops.id

}


resource "aws_route_table" "rt1" {
  vpc_id = aws_vpc.devops.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

}