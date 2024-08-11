
resource "aws_instance" "web" {
  ami                                  = "ami-03972092c42e8c0ca"
  associate_public_ip_address          = true
  availability_zone                    = "us-east-1a"
  instance_type                        = "t2.small"
  ipv6_address_count                   = 0
  key_name                             = "testkey1"
  monitoring                           = false
  security_groups                      = ["launch-wizard-2"]
  source_dest_check                    = true
  subnet_id                            = "subnet-0596eeca48b4ba9b8"
  tags = {
    Name = "web1"
  }
  tags_all = {
    Name = "web1"
  }
  
  
  }
  
