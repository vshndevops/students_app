provider "aws" {
  region     = var.region

}

# network interface (eni) for vm1

resource "aws_network_interface" "ec2" {
  subnet_id   = aws_subnet.subnet.id
  private_ips = [cidrhost(var.cidr_block, 70)]

}



# ec2 instance 

resource "aws_instance" "ec2" {
  ami           = "ami-053b0d53c279acc90" # us-east-1a
  instance_type = "t2.micro"
  key_name = "lab-key"
  subnet_id     = aws_subnet.subnet.id
  associate_public_ip_address = true

  # network_interface {
  #   network_interface_id = aws_network_interface.ec2.id
  #   device_index         = 0
  # }


}


