
resource "aws_subnet" "subnet" {
  vpc_id            = "vpc-01b068a477baa5e42"
  cidr_block        = cidrsubnet(var.cidr_block, 2, 1)
  availability_zone = "${var.region}a"

}


# subnet route-table assosiation

resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.subnet.id
  route_table_id = "rtb-0158457a6faac9304"
}