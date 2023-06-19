provider "aws" {
  region     = "us-east-1"

}



resource "aws_network_interface" "ec2" {
  subnet_id   = aws_subnet.subnet.id
  private_ips = ["172.16.0.6"]

}


resource "aws_eip" "ec2" {
  domain                    = "vpc"
  network_interface         = aws_network_interface.ec2.id
  associate_with_private_ip = "172.16.0.6"
}

resource "aws_instance" "ec2" {
  ami           = "ami-0a0c8eebcdd6dcbd0" # us-east-1a
  instance_type = "t2.medium"
  key_name = "lab-key"

  network_interface {
    network_interface_id = aws_network_interface.ec2.id
    device_index         = 0
  }

  credit_specification {
    cpu_credits = "unlimited"
  }
}


