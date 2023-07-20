provider "aws" {
  region     = var.region

}

resource "aws_instance" "ec2" {
  ami           = "ami-053b0d53c279acc90" # us-east-1a
  instance_type = "t2.micro"
  key_name = "lab-key"
  subnet_id     = aws_subnet.subnet.id
  associate_public_ip_address = true
  vpc_security_group_ids= ["sg-0cff0d722ea80a897"]
  tags = {

    Name = "APP-SRV"
  }

}


