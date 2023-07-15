
resource "aws_subnet" "subnet" {
  vpc_id            = "vpc-01b068a477baa5e42"
  cidr_block        = cidrsubnet(var.cidr_block, 2, 1)
  availability_zone = "${var.region}a"

}


# Internet gateway

resource "aws_internet_gateway" "igw" {
  vpc_id = "vpc-01b068a477baa5e42"

}


resource "aws_route_table" "rt1" {
  vpc_id = "vpc-01b068a477baa5e42"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

}