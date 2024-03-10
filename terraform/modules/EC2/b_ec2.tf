#Create Backend EC2
resource "aws_instance" "abi-backend" {
  ami                         = "ami-0d98699b372e7336f"
  instance_type               = "t2.micro"
  availability_zone           = var.AZ
  subnet_id                   = var.public1_subnet_id
  key_name                    = "abi"
  associate_public_ip_address = true
  vpc_security_group_ids      = ["${aws_security_group.sg.id}"]

  root_block_device {
    volume_size = 800

  }


  tags = {
    Name = "backend-machine"
  }

}

