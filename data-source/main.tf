/*provider "aws" {
    region = "us-east-1"
  
}

data "aws_instance" "dt1" {
  instance_id = "ami-03972092c42e8c0ca"

}

resource "aws_instance" "server1" {
    ami = data.aws_instance.dt1.ami
    instance_type = data.aws_instance.dt1.instance_type
    availability_zone = data.aws_instance.dt1.availability_zone
    security_groups = data.aws_instance.dt1.security_groups
}
*/

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

#seconnd code
data "aws_ami" "amz" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm*-x86_64-ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["amazon"] # Canonical
}
resource "aws_instance" "inst2" {
    ami = data.aws_ami.amz.id
    instance_type = "t2.micro"
  
}